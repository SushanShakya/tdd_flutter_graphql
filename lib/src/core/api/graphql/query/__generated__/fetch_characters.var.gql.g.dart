// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_characters.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchCharactersVars> _$gFetchCharactersVarsSerializer =
    new _$GFetchCharactersVarsSerializer();

class _$GFetchCharactersVarsSerializer
    implements StructuredSerializer<GFetchCharactersVars> {
  @override
  final Iterable<Type> types = const [
    GFetchCharactersVars,
    _$GFetchCharactersVars
  ];
  @override
  final String wireName = 'GFetchCharactersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCharactersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GFetchCharactersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCharactersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCharactersVars extends GFetchCharactersVars {
  @override
  final int? page;

  factory _$GFetchCharactersVars(
          [void Function(GFetchCharactersVarsBuilder)? updates]) =>
      (new GFetchCharactersVarsBuilder()..update(updates))._build();

  _$GFetchCharactersVars._({this.page}) : super._();

  @override
  GFetchCharactersVars rebuild(
          void Function(GFetchCharactersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCharactersVarsBuilder toBuilder() =>
      new GFetchCharactersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCharactersVars && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchCharactersVars')
          ..add('page', page))
        .toString();
  }
}

class GFetchCharactersVarsBuilder
    implements Builder<GFetchCharactersVars, GFetchCharactersVarsBuilder> {
  _$GFetchCharactersVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GFetchCharactersVarsBuilder();

  GFetchCharactersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCharactersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCharactersVars;
  }

  @override
  void update(void Function(GFetchCharactersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCharactersVars build() => _build();

  _$GFetchCharactersVars _build() {
    final _$result = _$v ?? new _$GFetchCharactersVars._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
