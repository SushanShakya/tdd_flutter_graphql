// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ferry/ferry.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.req.gql.dart';
import 'package:tdd_flutter_graphql/src/core/failures/not_found_failure.dart';
import 'package:tdd_flutter_graphql/src/core/failures/server_failure.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/converters/character_entity_converter.dart';

import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/paginated_characters_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';

class GraphqlPaginatedCharacterRepo extends PaginatedCharactersRepo {
  final Client client;

  GraphqlPaginatedCharacterRepo({
    required this.client,
  });

  @override
  Future<Paginated<List<CharacterEntity>>> fetchCharacters(int page) async {
    try {
      final data = await client
          .request(
            GFetchCharactersReq(
              (b) => b..vars.page = page,
            ),
          )
          .first;
      if (data.data == null) throw const NotFoundFailure();
      final info = data.data!.characters!.info!;
      final results = data.data!.characters!.results!;
      return Paginated(
        count: info.count!,
        pages: info.pages!,
        next: info.next,
        prev: info.prev,
        data: results
            .map((e) => CharacterEntityConverter.fromResponse(e).data)
            .toList(),
      );
    } on NotFoundFailure {
      throw const NotFoundFailure();
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }
}
