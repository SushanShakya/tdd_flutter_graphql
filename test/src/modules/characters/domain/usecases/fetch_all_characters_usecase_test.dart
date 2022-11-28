import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutter_graphql/src/core/failures/server_failure.dart';
import 'package:tdd_flutter_graphql/src/core/interface/usecases/usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/characters_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/factories/character_entity_factory.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_all_characters_usecase.dart';

import 'fetch_all_characters_usecase_test.mocks.dart';

@GenerateMocks([CharactersRepo])
void main() {
  late CharactersRepo repo;
  late FetchAllCharactersUseCase usecase;

  var mockData = CharacterEntityFactory().generateFakeList();
  var err = const ServerFailure('');

  setUp(() {
    repo = MockCharactersRepo();
    usecase = FetchAllCharactersUseCase(repo: repo);
  });

  test('is a AsyncUseCase', () {
    expect(usecase, isA<AsyncUseCase>());
  });

  test('calls CharactersRepo', () async {
    when(repo.fetchCharacters()).thenAnswer((e) async => []);
    await usecase.call(NoParam());
    verify(repo.fetchCharacters());
  });

  test('returns fetched data', () async {
    when(repo.fetchCharacters()).thenAnswer((e) async => mockData);

    var data = await usecase.call(NoParam());
    expect(data, mockData);
  });

  test('throws Failure when error', () async {
    when(repo.fetchCharacters()).thenThrow(err);
    expect(
        usecase.call(NoParam()), throwsA(const TypeMatcher<ServerFailure>()));
  });
}
