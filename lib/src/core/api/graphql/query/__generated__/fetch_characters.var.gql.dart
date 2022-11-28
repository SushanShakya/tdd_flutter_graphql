// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'fetch_characters.var.gql.g.dart';

abstract class GFetchCharactersVars
    implements Built<GFetchCharactersVars, GFetchCharactersVarsBuilder> {
  GFetchCharactersVars._();

  factory GFetchCharactersVars(
          [Function(GFetchCharactersVarsBuilder b) updates]) =
      _$GFetchCharactersVars;

  int? get page;
  static Serializer<GFetchCharactersVars> get serializer =>
      _$gFetchCharactersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchCharactersVars.serializer, this)
          as Map<String, dynamic>);
  static GFetchCharactersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchCharactersVars.serializer, json);
}
