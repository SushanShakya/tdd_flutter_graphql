import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.data.gql.dart';
import 'package:tdd_flutter_graphql/src/core/interface/converter.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';

class CharacterEntityConverter extends Converter<CharacterEntity> {
  CharacterEntityConverter.fromResponse(
      GFetchCharactersData_characters_results data) {
    this.data = CharacterEntity(
      id: data.id ?? "",
      name: data.name ?? '',
      image: data.image ?? '',
      gender: data.gender ?? '',
    );
  }
}
