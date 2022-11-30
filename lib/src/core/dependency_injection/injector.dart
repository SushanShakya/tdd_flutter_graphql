import 'package:get_it/get_it.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/client/graphql_client.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/graphql_character_repo.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/data/repo/graphql_paginated_character_repo.dart';
import 'package:ferry/ferry.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_all_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_paginated_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/gui/presenters/fetch_characters_bloc.dart';

final g = GetIt.I;

Future<void> injectDependencies() async {
  // =============== Client
  final client = await getClient();
  g.registerLazySingleton(() => client);

  // ================ Repo
  g.registerLazySingleton(
    () => GraphqlPaginatedCharacterRepo(client: g<Client>()),
  );
  g.registerLazySingleton(() => GraphqlCharactersRepo(client: g<Client>()));

  // =============== Usecases
  g.registerLazySingleton(
    () => FetchAllCharactersUseCase(repo: g<GraphqlCharactersRepo>()),
  );
  g.registerLazySingleton(() => FetchPaginatedCharactersUseCase(
        repo: g<GraphqlPaginatedCharacterRepo>(),
      ));

  // ============== Factories
  g.registerFactory(() => FetchCharactersBloc(
        usecase: g<FetchAllCharactersUseCase>(),
        paginatedUsecase: g<FetchPaginatedCharactersUseCase>(),
      ));
}
