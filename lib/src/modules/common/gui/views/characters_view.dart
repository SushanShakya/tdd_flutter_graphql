import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/gui/presenters/fetch_characters_bloc.dart';
import 'package:warped_bloc/warped_bloc.dart';

import '../../../../core/dependency_injection/injector.dart';

class CharactersView extends StatefulWidget {
  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  late FetchCharactersBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = g<FetchCharactersBloc>()..fetchPaginated();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocWrapper<FetchCharactersBloc, BlocState>(
        bloc: bloc,
        builder: defaultBuilder<BlocState, List<CharacterEntity>, String>(
          onData: (data) => LazyLoadScrollView(
            onEndOfPage: () {
              bloc.fetchPaginated();
            },
            child: ListView.separated(
              itemCount: data.length,
              separatorBuilder: (c, i) => const SizedBox(height: 16),
              itemBuilder: (c, i) {
                final e = data[i];
                return ListTile(
                  leading: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.network(e.image),
                  ),
                  title: Text(e.name),
                  subtitle: Text(e.gender),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
