import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.data.gql.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.req.gql.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.var.gql.dart';
import 'package:tdd_flutter_graphql/src/core/failures/not_found_failure.dart';
import 'package:tdd_flutter_graphql/src/core/failures/server_failure.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/converters/character_entity_converter.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/graphql_paginated_character_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/paginated_characters_repo.dart';
import 'package:ferry/ferry.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';

import 'graphql_character_repo_test.mocks.dart';

void main() {
  late Client client;
  late GraphqlPaginatedCharacterRepo repo;

  var response =
      MockOperationResponse<GFetchCharactersData, GFetchCharactersVars>();
  var mockResponse = GFetchCharactersData(
    (b) => b
      ..characters.info.count = 10
      ..characters.info.pages = 10
      ..characters.info.next = 2
      ..characters.info.prev = null
      ..characters.results = ListBuilder([
        GFetchCharactersData_characters_results(
          (e) => e
            ..gender = "Male"
            ..id = "1"
            ..image = "https://reqres.in/img/faces/7-image.jpg"
            ..name = "Someone",
        ),
      ]),
  );
  var page = 1;
  var mockRequest = GFetchCharactersReq((b) => b..vars.page = page);

  setUp(() {
    client = MockClient();
    repo = GraphqlPaginatedCharacterRepo(client: client);
  });

  test('is a PaginatedCharacterRepo', () {
    expect(repo, isA<PaginatedCharactersRepo>());
  });

  test('calls client.request', () async {
    when(response.data).thenAnswer((e) => mockResponse);
    when(client.request(mockRequest)).thenAnswer((e) async* {
      yield response;
    });
    repo.fetchCharacters(page);
    verify(client.request(mockRequest));
  });

  test('return Paginated Response', () async {
    when(response.data).thenAnswer((e) => mockResponse);
    when(client.request(mockRequest)).thenAnswer((e) async* {
      yield response;
    });
    final data = await repo.fetchCharacters(page);
    var info = mockResponse.characters!.info!;
    var results = mockResponse.characters!.results!;
    expect(
        data,
        Paginated(
          count: info.count!,
          pages: info.pages!,
          next: info.next,
          prev: info.prev,
          data: results
              .map((e) => CharacterEntityConverter.fromResponse(e).data)
              .toList(),
        ));
  });

  test('throws Not Found Failure when data is null', () {
    when(response.data).thenAnswer((e) => null);
    when(client.request(mockRequest)).thenAnswer((e) async* {
      yield response;
    });
    expect(
      repo.fetchCharacters(page),
      throwsA(const TypeMatcher<NotFoundFailure>()),
    );
  });

  test('throws a Server Failure when things go wrong', () {
    when(client.request(mockRequest)).thenThrow(Exception());
    expect(
      repo.fetchCharacters(page),
      throwsA(const TypeMatcher<ServerFailure>()),
    );
  });
}
