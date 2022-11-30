// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tdd_flutter_graphql/src/core/interface/usecases/usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_all_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_paginated_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';
import 'package:tdd_flutter_graphql/src/modules/common/domain/param/pagination_param.dart';
import 'package:warped_bloc/cubit/async_cubit.dart';
import 'package:warped_bloc/states/state.dart';

class FetchCharactersLoaded extends DataState<List<CharacterEntity>> {
  const FetchCharactersLoaded({required List<CharacterEntity> data})
      : super(data: data);
}

class FetchCharactersBloc extends AsyncCubit {
  final FetchAllCharactersUseCase usecase;
  final FetchPaginatedCharactersUseCase paginatedUsecase;
  FetchCharactersBloc({
    required this.usecase,
    required this.paginatedUsecase,
  });

  fetch() {
    handleDefaultStates(() async {
      var data = await usecase.call(NoParam());
      emit(FetchCharactersLoaded(data: data));
    });
  }

  Paginated<List<CharacterEntity>>? _cache;

  fetchPaginated() {
    if (_cache != null) {
      if (_cache!.next == null) {
        return;
      }
    }
    handleDefaultStates(() async {
      final data = await paginatedUsecase.call(
        PageParam(page: _cache?.next ?? 1),
      );

      if (_cache == null) {
        _cache = data;
      } else {
        _cache = _cache!.copyWith(
          count: data.count,
          pages: data.pages,
          next: data.next,
          prev: data.prev,
          data: [..._cache!.data, ...data.data],
        );
      }

      emit(FetchCharactersLoaded(data: _cache!.data));
    }, showLoading: _cache?.next == null);
  }
}
