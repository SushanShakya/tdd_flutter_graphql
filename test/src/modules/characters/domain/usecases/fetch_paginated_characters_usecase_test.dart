import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutter_graphql/src/core/failures/server_failure.dart';
import 'package:tdd_flutter_graphql/src/core/interface/usecases/usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/paginated_characters_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/factories/character_entity_factory.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_paginated_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';
import 'package:tdd_flutter_graphql/src/modules/common/domain/param/pagination_param.dart';

import 'fetch_paginated_characters_usecase_test.mocks.dart';

@GenerateMocks([PaginatedCharactersRepo])
void main() {
  late PaginatedCharactersRepo repo;
  late FetchPaginatedCharactersUseCase usecase;

  var param = const PageParam(page: 1);
  var mockRes = Paginated<List<CharacterEntity>>.fake(
    data: <CharacterEntity>[
      CharacterEntityFactory().generateFake(),
    ],
  );
  var mockRes2 = Paginated<List<CharacterEntity>>.fake(
    data: <CharacterEntity>[
      CharacterEntityFactory().generateFake(),
      CharacterEntityFactory().generateFake(),
    ],
  );

  setUp(() {
    repo = MockPaginatedCharactersRepo();
    usecase = FetchPaginatedCharactersUseCase(repo: repo);
  });

  test('is a AsyncUseCase', () {
    expect(usecase, isA<AsyncUseCase>());
  });

  group('fetch Characters', () {
    setUp(() {
      when(repo.fetchCharacters(param.page)).thenAnswer((e) async => mockRes);
    });

    test('calls repo.fetchCharacters', () async {
      await usecase.call(param);
      verify(repo.fetchCharacters(param.page));
      verifyNoMoreInteractions(repo);
    });

    test('returns data if no error', () async {
      var data = await usecase.call(param);
      expect(data, mockRes);
    });

    test('throws Failure if error in repo', () async {
      when(repo.fetchCharacters(param.page))
          .thenThrow(const ServerFailure('er'));
      expect(usecase.call(param), throwsA(const TypeMatcher<ServerFailure>()));
    });

    test('returns data from cache if new param same as old', () async {
      var before = await usecase.call(param);
      // Change the data to be returned by mock
      when(repo.fetchCharacters(param.page)).thenAnswer((e) async => mockRes2);
      var after = await usecase.call(param);
      expect(before, after);
    });
  });
}
