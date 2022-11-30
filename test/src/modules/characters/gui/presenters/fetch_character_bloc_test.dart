import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutter_graphql/src/core/failures/not_found_failure.dart';
import 'package:tdd_flutter_graphql/src/core/interface/usecases/usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/factories/character_entity_factory.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_all_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/usecases/fetch_paginated_characters_usecase.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/gui/presenters/fetch_characters_bloc.dart';
import 'package:tdd_flutter_graphql/src/modules/common/data/models/paginated.dart';
import 'package:tdd_flutter_graphql/src/modules/common/domain/param/pagination_param.dart';
import 'package:warped_bloc/states/state.dart';

import 'fetch_character_bloc_test.mocks.dart';

@GenerateMocks([FetchAllCharactersUseCase, FetchPaginatedCharactersUseCase])
void main() {
  late FetchPaginatedCharactersUseCase paginatedUsecase;
  late FetchAllCharactersUseCase usecase;
  late FetchCharactersBloc bloc;

  var fa = CharacterEntityFactory();

  var mockData = [
    fa.generateFake(),
  ];

  group('FetchCharactersBloc', () {
    setUp(() {
      paginatedUsecase = MockFetchPaginatedCharactersUseCase();
      usecase = MockFetchAllCharactersUseCase();
      bloc = FetchCharactersBloc(
        usecase: usecase,
        paginatedUsecase: paginatedUsecase,
      );
    });

    test('is a AsyncCubit', () {
      expect(bloc, isA<FetchCharactersBloc>());
    });

    group('fetch', () {
      blocTest<FetchCharactersBloc, BlocState>(
        'emits [Loading, FetchCharactersLoaded] when things go right',
        build: () {
          when(usecase.call(NoParam())).thenAnswer((e) async => mockData);
          return bloc;
        },
        act: (bloc) => bloc.fetch(),
        expect: () => [
          LoadingState(),
          FetchCharactersLoaded(data: mockData),
        ],
      );

      blocTest<FetchCharactersBloc, BlocState>(
        'emits [Loading, Failed] when fetch and failed.',
        build: () {
          when(usecase.call(NoParam())).thenThrow(const NotFoundFailure());
          return bloc;
        },
        act: (bloc) => bloc.fetch(),
        expect: () => [
          LoadingState(),
          ErrorState(message: const NotFoundFailure().message),
        ],
      );
    });

    group('fetchPaginated', () {
      blocTest<FetchCharactersBloc, BlocState>(
        'emits [Loading, FetchCharactersLoaded] when fetch and success.',
        build: () {
          when(paginatedUsecase.call(const PageParam(page: 1))).thenAnswer(
            (e) async => Paginated.fake(data: mockData),
          );
          return bloc;
        },
        act: (bloc) => bloc.fetchPaginated(),
        expect: () => [
          LoadingState(),
          FetchCharactersLoaded(data: mockData),
        ],
      );
    });

    blocTest<FetchCharactersBloc, BlocState>(
      'emits [Loading, FetchCharactersLoaded] when fetch 2 times.',
      build: () {
        when(paginatedUsecase.call(const PageParam(page: 1))).thenAnswer(
          (e) async => Paginated(
            count: mockData.length,
            pages: 10,
            next: 2,
            prev: null,
            data: mockData,
          ),
        );
        when(paginatedUsecase.call(const PageParam(page: 2))).thenAnswer(
          (e) async => Paginated(
            count: mockData.length,
            pages: 10,
            next: 3,
            prev: 1,
            data: mockData,
          ),
        );
        return bloc;
      },
      act: (bloc) async {
        bloc.fetchPaginated();
        await Future.delayed(Duration.zero);
        bloc.fetchPaginated();
      },
      expect: () => [
        LoadingState(),
        FetchCharactersLoaded(data: mockData),
        FetchCharactersLoaded(data: [...mockData, ...mockData]),
      ],
    );
    blocTest<FetchCharactersBloc, BlocState>(
      'emits [Loading, FetchCharactersLoaded] only once when fetch 2 with last having next as null',
      build: () {
        when(paginatedUsecase.call(const PageParam(page: 1))).thenAnswer(
          (e) async => Paginated(
            count: mockData.length,
            pages: 10,
            next: null,
            prev: null,
            data: mockData,
          ),
        );
        return bloc;
      },
      act: (bloc) async {
        bloc.fetchPaginated();
        await Future.delayed(Duration.zero);
        bloc.fetchPaginated();
      },
      expect: () => [
        LoadingState(),
        FetchCharactersLoaded(data: mockData),
      ],
    );
  });
}
