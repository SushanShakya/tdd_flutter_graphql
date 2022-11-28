import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';

abstract class CharactersRepo {
  Future<List<CharacterEntity>> fetchCharacters();
}
