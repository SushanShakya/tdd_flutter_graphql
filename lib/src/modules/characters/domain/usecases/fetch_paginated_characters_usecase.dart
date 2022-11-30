import 'package:tdd_flutter_graphql/src/core/interface/usecases/usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/interface/paginated_characters_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';
import 'package:tdd_flutter_graphql/src/modules/common/domain/param/pagination_param.dart';

class FetchPaginatedCharactersUseCase
    extends AsyncUseCase<Paginated<List<CharacterEntity>>, PageParam> {
  final PaginatedCharactersRepo repo;

  FetchPaginatedCharactersUseCase({required this.repo});

  PageParam? oldParam;
  Paginated<List<CharacterEntity>>? cache;

  @override
  Future<Paginated<List<CharacterEntity>>> call(PageParam param) async {
    if (param == oldParam) return cache!;
    oldParam = param;
    cache = await repo.fetchCharacters(param.page);
    return cache!;
  }
}
