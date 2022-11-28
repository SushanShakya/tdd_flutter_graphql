// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:tdd_flutter_graphql/src/core/api/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.ast.gql.dart'
    as _i5;
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.data.gql.dart'
    as _i2;
import 'package:tdd_flutter_graphql/src/core/api/graphql/query/__generated__/fetch_characters.var.gql.dart'
    as _i3;

part 'fetch_characters.req.gql.g.dart';

abstract class GFetchCharactersReq
    implements
        Built<GFetchCharactersReq, GFetchCharactersReqBuilder>,
        _i1.OperationRequest<_i2.GFetchCharactersData,
            _i3.GFetchCharactersVars> {
  GFetchCharactersReq._();

  factory GFetchCharactersReq(
      [Function(GFetchCharactersReqBuilder b) updates]) = _$GFetchCharactersReq;

  static void _initializeBuilder(GFetchCharactersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FetchCharacters')
    ..executeOnListen = true;
  @override
  _i3.GFetchCharactersVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GFetchCharactersData? Function(
      _i2.GFetchCharactersData?, _i2.GFetchCharactersData?)? get updateResult;
  @override
  _i2.GFetchCharactersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GFetchCharactersData? parseData(Map<String, dynamic> json) =>
      _i2.GFetchCharactersData.fromJson(json);
  static Serializer<GFetchCharactersReq> get serializer =>
      _$gFetchCharactersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFetchCharactersReq.serializer, this)
          as Map<String, dynamic>);
  static GFetchCharactersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFetchCharactersReq.serializer, json);
}
