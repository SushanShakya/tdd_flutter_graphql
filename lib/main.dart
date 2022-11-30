import 'package:flutter/material.dart';
import 'package:tdd_flutter_graphql/src/core/dependency_injection/injector.dart';
import 'package:tdd_flutter_graphql/src/modules/common/gui/views/characters_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CharactersView(),
    );
  }
}
