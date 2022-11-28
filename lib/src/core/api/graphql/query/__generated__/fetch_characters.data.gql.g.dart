// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_characters.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchCharactersData> _$gFetchCharactersDataSerializer =
    new _$GFetchCharactersDataSerializer();
Serializer<GFetchCharactersData_characters>
    _$gFetchCharactersDataCharactersSerializer =
    new _$GFetchCharactersData_charactersSerializer();
Serializer<GFetchCharactersData_characters_info>
    _$gFetchCharactersDataCharactersInfoSerializer =
    new _$GFetchCharactersData_characters_infoSerializer();
Serializer<GFetchCharactersData_characters_results>
    _$gFetchCharactersDataCharactersResultsSerializer =
    new _$GFetchCharactersData_characters_resultsSerializer();

class _$GFetchCharactersDataSerializer
    implements StructuredSerializer<GFetchCharactersData> {
  @override
  final Iterable<Type> types = const [
    GFetchCharactersData,
    _$GFetchCharactersData
  ];
  @override
  final String wireName = 'GFetchCharactersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCharactersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFetchCharactersData_characters)));
    }
    return result;
  }

  @override
  GFetchCharactersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCharactersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchCharactersData_characters))!
              as GFetchCharactersData_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCharactersData_charactersSerializer
    implements StructuredSerializer<GFetchCharactersData_characters> {
  @override
  final Iterable<Type> types = const [
    GFetchCharactersData_characters,
    _$GFetchCharactersData_characters
  ];
  @override
  final String wireName = 'GFetchCharactersData_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCharactersData_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GFetchCharactersData_characters_info)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GFetchCharactersData_characters_results)
            ])));
    }
    return result;
  }

  @override
  GFetchCharactersData_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCharactersData_charactersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFetchCharactersData_characters_info))!
              as GFetchCharactersData_characters_info);
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFetchCharactersData_characters_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCharactersData_characters_infoSerializer
    implements StructuredSerializer<GFetchCharactersData_characters_info> {
  @override
  final Iterable<Type> types = const [
    GFetchCharactersData_characters_info,
    _$GFetchCharactersData_characters_info
  ];
  @override
  final String wireName = 'GFetchCharactersData_characters_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCharactersData_characters_info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pages;
    if (value != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prev;
    if (value != null) {
      result
        ..add('prev')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GFetchCharactersData_characters_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCharactersData_characters_infoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pages':
          result.pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'prev':
          result.prev = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCharactersData_characters_resultsSerializer
    implements StructuredSerializer<GFetchCharactersData_characters_results> {
  @override
  final Iterable<Type> types = const [
    GFetchCharactersData_characters_results,
    _$GFetchCharactersData_characters_results
  ];
  @override
  final String wireName = 'GFetchCharactersData_characters_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCharactersData_characters_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchCharactersData_characters_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCharactersData_characters_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCharactersData extends GFetchCharactersData {
  @override
  final String G__typename;
  @override
  final GFetchCharactersData_characters? characters;

  factory _$GFetchCharactersData(
          [void Function(GFetchCharactersDataBuilder)? updates]) =>
      (new GFetchCharactersDataBuilder()..update(updates))._build();

  _$GFetchCharactersData._({required this.G__typename, this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchCharactersData', 'G__typename');
  }

  @override
  GFetchCharactersData rebuild(
          void Function(GFetchCharactersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCharactersDataBuilder toBuilder() =>
      new GFetchCharactersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCharactersData &&
        G__typename == other.G__typename &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), characters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchCharactersData')
          ..add('G__typename', G__typename)
          ..add('characters', characters))
        .toString();
  }
}

class GFetchCharactersDataBuilder
    implements Builder<GFetchCharactersData, GFetchCharactersDataBuilder> {
  _$GFetchCharactersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchCharactersData_charactersBuilder? _characters;
  GFetchCharactersData_charactersBuilder get characters =>
      _$this._characters ??= new GFetchCharactersData_charactersBuilder();
  set characters(GFetchCharactersData_charactersBuilder? characters) =>
      _$this._characters = characters;

  GFetchCharactersDataBuilder() {
    GFetchCharactersData._initializeBuilder(this);
  }

  GFetchCharactersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCharactersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCharactersData;
  }

  @override
  void update(void Function(GFetchCharactersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCharactersData build() => _build();

  _$GFetchCharactersData _build() {
    _$GFetchCharactersData _$result;
    try {
      _$result = _$v ??
          new _$GFetchCharactersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFetchCharactersData', 'G__typename'),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchCharactersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchCharactersData_characters
    extends GFetchCharactersData_characters {
  @override
  final String G__typename;
  @override
  final GFetchCharactersData_characters_info? info;
  @override
  final BuiltList<GFetchCharactersData_characters_results>? results;

  factory _$GFetchCharactersData_characters(
          [void Function(GFetchCharactersData_charactersBuilder)? updates]) =>
      (new GFetchCharactersData_charactersBuilder()..update(updates))._build();

  _$GFetchCharactersData_characters._(
      {required this.G__typename, this.info, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchCharactersData_characters', 'G__typename');
  }

  @override
  GFetchCharactersData_characters rebuild(
          void Function(GFetchCharactersData_charactersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCharactersData_charactersBuilder toBuilder() =>
      new GFetchCharactersData_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCharactersData_characters &&
        G__typename == other.G__typename &&
        info == other.info &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), info.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchCharactersData_characters')
          ..add('G__typename', G__typename)
          ..add('info', info)
          ..add('results', results))
        .toString();
  }
}

class GFetchCharactersData_charactersBuilder
    implements
        Builder<GFetchCharactersData_characters,
            GFetchCharactersData_charactersBuilder> {
  _$GFetchCharactersData_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchCharactersData_characters_infoBuilder? _info;
  GFetchCharactersData_characters_infoBuilder get info =>
      _$this._info ??= new GFetchCharactersData_characters_infoBuilder();
  set info(GFetchCharactersData_characters_infoBuilder? info) =>
      _$this._info = info;

  ListBuilder<GFetchCharactersData_characters_results>? _results;
  ListBuilder<GFetchCharactersData_characters_results> get results =>
      _$this._results ??=
          new ListBuilder<GFetchCharactersData_characters_results>();
  set results(ListBuilder<GFetchCharactersData_characters_results>? results) =>
      _$this._results = results;

  GFetchCharactersData_charactersBuilder() {
    GFetchCharactersData_characters._initializeBuilder(this);
  }

  GFetchCharactersData_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info?.toBuilder();
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCharactersData_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCharactersData_characters;
  }

  @override
  void update(void Function(GFetchCharactersData_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCharactersData_characters build() => _build();

  _$GFetchCharactersData_characters _build() {
    _$GFetchCharactersData_characters _$result;
    try {
      _$result = _$v ??
          new _$GFetchCharactersData_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GFetchCharactersData_characters', 'G__typename'),
              info: _info?.build(),
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchCharactersData_characters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchCharactersData_characters_info
    extends GFetchCharactersData_characters_info {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final int? pages;
  @override
  final int? next;
  @override
  final int? prev;

  factory _$GFetchCharactersData_characters_info(
          [void Function(GFetchCharactersData_characters_infoBuilder)?
              updates]) =>
      (new GFetchCharactersData_characters_infoBuilder()..update(updates))
          ._build();

  _$GFetchCharactersData_characters_info._(
      {required this.G__typename, this.count, this.pages, this.next, this.prev})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchCharactersData_characters_info', 'G__typename');
  }

  @override
  GFetchCharactersData_characters_info rebuild(
          void Function(GFetchCharactersData_characters_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCharactersData_characters_infoBuilder toBuilder() =>
      new GFetchCharactersData_characters_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCharactersData_characters_info &&
        G__typename == other.G__typename &&
        count == other.count &&
        pages == other.pages &&
        next == other.next &&
        prev == other.prev;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), count.hashCode),
                pages.hashCode),
            next.hashCode),
        prev.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchCharactersData_characters_info')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('pages', pages)
          ..add('next', next)
          ..add('prev', prev))
        .toString();
  }
}

class GFetchCharactersData_characters_infoBuilder
    implements
        Builder<GFetchCharactersData_characters_info,
            GFetchCharactersData_characters_infoBuilder> {
  _$GFetchCharactersData_characters_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _pages;
  int? get pages => _$this._pages;
  set pages(int? pages) => _$this._pages = pages;

  int? _next;
  int? get next => _$this._next;
  set next(int? next) => _$this._next = next;

  int? _prev;
  int? get prev => _$this._prev;
  set prev(int? prev) => _$this._prev = prev;

  GFetchCharactersData_characters_infoBuilder() {
    GFetchCharactersData_characters_info._initializeBuilder(this);
  }

  GFetchCharactersData_characters_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _pages = $v.pages;
      _next = $v.next;
      _prev = $v.prev;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCharactersData_characters_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCharactersData_characters_info;
  }

  @override
  void update(
      void Function(GFetchCharactersData_characters_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCharactersData_characters_info build() => _build();

  _$GFetchCharactersData_characters_info _build() {
    final _$result = _$v ??
        new _$GFetchCharactersData_characters_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GFetchCharactersData_characters_info', 'G__typename'),
            count: count,
            pages: pages,
            next: next,
            prev: prev);
    replace(_$result);
    return _$result;
  }
}

class _$GFetchCharactersData_characters_results
    extends GFetchCharactersData_characters_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? gender;

  factory _$GFetchCharactersData_characters_results(
          [void Function(GFetchCharactersData_characters_resultsBuilder)?
              updates]) =>
      (new GFetchCharactersData_characters_resultsBuilder()..update(updates))
          ._build();

  _$GFetchCharactersData_characters_results._(
      {required this.G__typename, this.id, this.name, this.image, this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchCharactersData_characters_results', 'G__typename');
  }

  @override
  GFetchCharactersData_characters_results rebuild(
          void Function(GFetchCharactersData_characters_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCharactersData_characters_resultsBuilder toBuilder() =>
      new GFetchCharactersData_characters_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCharactersData_characters_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode),
            image.hashCode),
        gender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GFetchCharactersData_characters_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('gender', gender))
        .toString();
  }
}

class GFetchCharactersData_characters_resultsBuilder
    implements
        Builder<GFetchCharactersData_characters_results,
            GFetchCharactersData_characters_resultsBuilder> {
  _$GFetchCharactersData_characters_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GFetchCharactersData_characters_resultsBuilder() {
    GFetchCharactersData_characters_results._initializeBuilder(this);
  }

  GFetchCharactersData_characters_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _image = $v.image;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCharactersData_characters_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCharactersData_characters_results;
  }

  @override
  void update(
      void Function(GFetchCharactersData_characters_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCharactersData_characters_results build() => _build();

  _$GFetchCharactersData_characters_results _build() {
    final _$result = _$v ??
        new _$GFetchCharactersData_characters_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GFetchCharactersData_characters_results', 'G__typename'),
            id: id,
            name: name,
            image: image,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
