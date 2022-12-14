// Mocks generated by Mockito 5.2.0 from annotations
// in tdd_flutter_graphql/test/src/modules/characters/data/repo/graphql_character_repo_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:ferry/ferry.dart' as _i6;
import 'package:ferry/src/fetch_policy_typed_link.dart' as _i2;
import 'package:ferry/src/update_cache_typed_link.dart' as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i5;
import 'package:gql/ast.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeLink_0 extends _i1.Fake implements _i2.Link {}

class _FakeCache_1 extends _i1.Fake implements _i3.Cache {}

class _FakeStreamController_2<T> extends _i1.Fake
    implements _i4.StreamController<T> {}

class _FakeTypedLink_3 extends _i1.Fake implements _i5.TypedLink {}

class _FakeOperationRequest_4<TData, TVars> extends _i1.Fake
    implements _i5.OperationRequest<TData, TVars> {}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i6.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Link get link =>
      (super.noSuchMethod(Invocation.getter(#link), returnValue: _FakeLink_0())
          as _i2.Link);
  @override
  Map<String, _i3.TypePolicy> get typePolicies => (super.noSuchMethod(
      Invocation.getter(#typePolicies),
      returnValue: <String, _i3.TypePolicy>{}) as Map<String, _i3.TypePolicy>);
  @override
  Map<String, Function> get updateCacheHandlers =>
      (super.noSuchMethod(Invocation.getter(#updateCacheHandlers),
          returnValue: <String, Function>{}) as Map<String, Function>);
  @override
  Map<_i7.OperationType, _i5.FetchPolicy> get defaultFetchPolicies =>
      (super.noSuchMethod(Invocation.getter(#defaultFetchPolicies),
              returnValue: <_i7.OperationType, _i5.FetchPolicy>{})
          as Map<_i7.OperationType, _i5.FetchPolicy>);
  @override
  bool get addTypename =>
      (super.noSuchMethod(Invocation.getter(#addTypename), returnValue: false)
          as bool);
  @override
  _i3.Cache get cache => (super.noSuchMethod(Invocation.getter(#cache),
      returnValue: _FakeCache_1()) as _i3.Cache);
  @override
  set cache(_i3.Cache? _cache) =>
      super.noSuchMethod(Invocation.setter(#cache, _cache),
          returnValueForMissingStub: null);
  @override
  _i4.StreamController<_i5.OperationRequest<dynamic, dynamic>>
      get requestController =>
          (super.noSuchMethod(Invocation.getter(#requestController),
                  returnValue: _FakeStreamController_2<
                      _i5.OperationRequest<dynamic, dynamic>>())
              as _i4.StreamController<_i5.OperationRequest<dynamic, dynamic>>);
  @override
  set requestController(
          _i4.StreamController<_i5.OperationRequest<dynamic, dynamic>>?
              _requestController) =>
      super.noSuchMethod(
          Invocation.setter(#requestController, _requestController),
          returnValueForMissingStub: null);
  @override
  _i4.Future<void> dispose() =>
      (super.noSuchMethod(Invocation.method(#dispose, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Stream<_i5.OperationResponse<TData, TVars>> request<TData, TVars>(
          _i5.OperationRequest<TData, TVars>? request,
          [_i5.NextTypedLink<TData, TVars>? forward]) =>
      (super.noSuchMethod(Invocation.method(#request, [request, forward]),
              returnValue: Stream<_i5.OperationResponse<TData, TVars>>.empty())
          as _i4.Stream<_i5.OperationResponse<TData, TVars>>);
  @override
  _i5.TypedLink concat(_i5.TypedLink? next) =>
      (super.noSuchMethod(Invocation.method(#concat, [next]),
          returnValue: _FakeTypedLink_3()) as _i5.TypedLink);
  @override
  _i5.TypedLink route(_i5.TypedLinkRouter<dynamic, dynamic>? route) =>
      (super.noSuchMethod(Invocation.method(#route, [route]),
          returnValue: _FakeTypedLink_3()) as _i5.TypedLink);
  @override
  _i5.TypedLink split(
          bool Function<TData, TVars>(_i5.OperationRequest<TData, TVars>)? test,
          _i5.TypedLink? left,
          [_i5.TypedLink? right = const _i5.PassthroughTypedLink()]) =>
      (super.noSuchMethod(Invocation.method(#split, [test, left, right]),
          returnValue: _FakeTypedLink_3()) as _i5.TypedLink);
}

/// A class which mocks [OperationResponse].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockOperationResponse<TData, TVars> extends _i1.Mock
    implements _i5.OperationResponse<TData, TVars> {
  MockOperationResponse() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.OperationRequest<TData, TVars> get operationRequest =>
      (super.noSuchMethod(Invocation.getter(#operationRequest),
              returnValue: _FakeOperationRequest_4<TData, TVars>())
          as _i5.OperationRequest<TData, TVars>);
  @override
  _i5.DataSource get dataSource =>
      (super.noSuchMethod(Invocation.getter(#dataSource),
          returnValue: _i5.DataSource.None) as _i5.DataSource);
  @override
  bool get loading =>
      (super.noSuchMethod(Invocation.getter(#loading), returnValue: false)
          as bool);
  @override
  bool get hasErrors =>
      (super.noSuchMethod(Invocation.getter(#hasErrors), returnValue: false)
          as bool);
}
