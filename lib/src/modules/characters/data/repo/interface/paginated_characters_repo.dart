import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';

abstract class PaginatedCharactersRepo {
  Future<Paginated<List<CharacterEntity>>> fetchCharacters(int page);
}
