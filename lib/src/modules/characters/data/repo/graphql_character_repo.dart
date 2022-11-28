// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ferry/ferry.dart';
import 'package:tdd_flutter_graphql/src/core/failures/server_failure.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/converters/character_entity_converter.dart';

import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/characters_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';

import '../../../../core/api/graphql/query/__generated__/fetch_characters.req.gql.dart';

class GraphqlCharactersRepo extends CharactersRepo {
  final Client client;

  GraphqlCharactersRepo({
    required this.client,
  });

  @override
  Future<List<CharacterEntity>> fetchCharacters() async {
    try {
      var res = await client
          .request(GFetchCharactersReq((b) => b..vars.page = 1))
          .first;

      var data = res.data;
      if (data == null) return [];
      return List<CharacterEntity>.from(
        data.characters!.results!
            .map((e) => CharacterEntityConverter.fromResponse(e).data),
      );
    } catch (e) {
      throw const ServerFailure('Error');
    }
  }
}
