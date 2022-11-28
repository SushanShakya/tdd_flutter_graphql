// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tdd_flutter_graphql/src/core/api/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'fetch_characters.data.gql.g.dart';

abstract class GFetchCharactersData
    implements Built<GFetchCharactersData, GFetchCharactersDataBuilder> {
  GFetchCharactersData._();

  factory GFetchCharactersData(
          [Function(GFetchCharactersDataBuilder b) updates]) =
      _$GFetchCharactersData;

  static void _initializeBuilder(GFetchCharactersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchCharactersData_characters? get characters;
  static Serializer<GFetchCharactersData> get serializer =>
      _$gFetchCharactersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchCharactersData.serializer, this)
          as Map<String, dynamic>);
  static GFetchCharactersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchCharactersData.serializer, json);
}

abstract class GFetchCharactersData_characters
    implements
        Built<GFetchCharactersData_characters,
            GFetchCharactersData_charactersBuilder> {
  GFetchCharactersData_characters._();

  factory GFetchCharactersData_characters(
          [Function(GFetchCharactersData_charactersBuilder b) updates]) =
      _$GFetchCharactersData_characters;

  static void _initializeBuilder(GFetchCharactersData_charactersBuilder b) =>
      b..G__typename = 'Characters';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFetchCharactersData_characters_info? get info;
  BuiltList<GFetchCharactersData_characters_results>? get results;
  static Serializer<GFetchCharactersData_characters> get serializer =>
      _$gFetchCharactersDataCharactersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFetchCharactersData_characters.serializer, this)
      as Map<String, dynamic>);
  static GFetchCharactersData_characters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchCharactersData_characters.serializer, json);
}

abstract class GFetchCharactersData_characters_info
    implements
        Built<GFetchCharactersData_characters_info,
            GFetchCharactersData_characters_infoBuilder> {
  GFetchCharactersData_characters_info._();

  factory GFetchCharactersData_characters_info(
          [Function(GFetchCharactersData_characters_infoBuilder b) updates]) =
      _$GFetchCharactersData_characters_info;

  static void _initializeBuilder(
          GFetchCharactersData_characters_infoBuilder b) =>
      b..G__typename = 'Info';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  int? get pages;
  int? get next;
  int? get prev;
  static Serializer<GFetchCharactersData_characters_info> get serializer =>
      _$gFetchCharactersDataCharactersInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFetchCharactersData_characters_info.serializer, this)
      as Map<String, dynamic>);
  static GFetchCharactersData_characters_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchCharactersData_characters_info.serializer, json);
}

abstract class GFetchCharactersData_characters_results
    implements
        Built<GFetchCharactersData_characters_results,
            GFetchCharactersData_characters_resultsBuilder> {
  GFetchCharactersData_characters_results._();

  factory GFetchCharactersData_characters_results(
      [Function(GFetchCharactersData_characters_resultsBuilder b)
          updates]) = _$GFetchCharactersData_characters_results;

  static void _initializeBuilder(
          GFetchCharactersData_characters_resultsBuilder b) =>
      b..G__typename = 'Character';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get image;
  String? get gender;
  static Serializer<GFetchCharactersData_characters_results> get serializer =>
      _$gFetchCharactersDataCharactersResultsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFetchCharactersData_characters_results.serializer, this)
      as Map<String, dynamic>);
  static GFetchCharactersData_characters_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchCharactersData_characters_results.serializer, json);
}
