// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:tdd_flutter_graphql/src/core/api/graphql/__generated__/schema.schema.gql.dart'
    show GCacheControlScope;
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.data.gql.dart'
    show
        GFetchCharactersData,
        GFetchCharactersData_characters,
        GFetchCharactersData_characters_info,
        GFetchCharactersData_characters_results;
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.req.gql.dart'
    show GFetchCharactersReq;
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.var.gql.dart'
    show GFetchCharactersVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GFetchCharactersData,
  GFetchCharactersData_characters,
  GFetchCharactersData_characters_info,
  GFetchCharactersData_characters_results,
  GFetchCharactersReq,
  GFetchCharactersVars
])
final Serializers serializers = _serializersBuilder.build();
