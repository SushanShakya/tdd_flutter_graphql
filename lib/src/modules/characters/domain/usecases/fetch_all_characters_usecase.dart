import 'package:tdd_flutter_graphql/src/core/interface/usecases/usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/characters_repo.dart';
import '../entities/character_entity.dart';

class FetchAllCharactersUseCase
    extends AsyncUseCase<List<CharacterEntity>, NoParam> {
  final CharactersRepo repo;

  FetchAllCharactersUseCase({
    required this.repo,
  });

  @override
  Future<List<CharacterEntity>> call(NoParam param) async {
    var data = await repo.fetchCharacters();
    return data;
  }
}
