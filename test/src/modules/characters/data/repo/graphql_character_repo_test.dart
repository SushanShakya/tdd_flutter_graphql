import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.data.gql.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.req.gql.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.var.gql.dart';
import 'package:tdd_flutter_graphql/src/core/failures/server_failure.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/converters/character_entity_converter.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/graphql_character_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/characters_repo.dart';
import 'package:ferry/ferry.dart';
import 'graphql_character_repo_test.mocks.dart';

@GenerateMocks([Client, OperationResponse])
void main() {
  late Client client;
  late GraphqlCharactersRepo repo;

  var mockData = GFetchCharactersData(
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
  var mockDataWithNull = GFetchCharactersData(
    (b) => b
      ..characters.info.count = 10
      ..characters.info.pages = 10
      ..characters.info.next = 2
      ..characters.info.prev = null,
  );
  var mockResponse =
      MockOperationResponse<GFetchCharactersData, GFetchCharactersVars>();
  var page = 1;
  var fakeRequest = GFetchCharactersReq((b) => b..vars.page = page);

  setUp(() {
    client = MockClient();
    repo = GraphqlCharactersRepo(client: client);
  });

  test('is a CharacterRepo', () {
    expect(repo, isA<CharactersRepo>());
  });

  group('fetch characters', () {
    setUp(() {
      when(mockResponse.data).thenAnswer((e) => mockData);
      when(
        client.request<GFetchCharactersData, GFetchCharactersVars>(fakeRequest),
      ).thenAnswer(
        (e) async* {
          yield mockResponse;
        },
      );
    });
    test('calls client.request()', () async {
      await repo.fetchCharacters();
      verify(client.request(fakeRequest));
    });

    test('returns data from response', () async {
      final data = await repo.fetchCharacters();
      expect(
        data,
        mockData.characters!.results!
            .map((e) => CharacterEntityConverter.fromResponse(e).data)
            .toList(),
      );
    });

    test('returns server failure when error', () async {
      when(client
              .request<GFetchCharactersData, GFetchCharactersVars>(fakeRequest))
          .thenThrow(Exception());
      expect(
        repo.fetchCharacters(),
        throwsA(const TypeMatcher<ServerFailure>()),
      );
    });

    test('returns empty array when data is null', () async {
      when(mockResponse.data).thenAnswer((e) => null);
      when(
        client.request<GFetchCharactersData, GFetchCharactersVars>(fakeRequest),
      ).thenAnswer((e) async* {
        yield mockResponse;
      });

      final data = await repo.fetchCharacters();

      expect(data, []);
    });
  });
}
