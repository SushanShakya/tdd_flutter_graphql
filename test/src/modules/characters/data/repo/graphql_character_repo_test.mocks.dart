// Mocks generated by Mockito 5.2.0 from annotations
// in tdd_flutter_graphql/test/src/modules/characters/data/repo/graphql_character_repo_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:ferry/ferry.dart' as _i4;
import 'package:ferry/src/fetch_policy_typed_link.dart' as _i2;
import 'package:gql/ast.dart' as _i5;
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

class _FakeCache_1 extends _i1.Fake implements _i2.Cache {}

class _FakeStreamController_2<T> extends _i1.Fake
    implements _i3.StreamController<T> {}

class _FakeTypedLink_3 extends _i1.Fake implements _i2.TypedLink {}

class _FakeOperationRequest_4<TData, TVars> extends _i1.Fake
    implements _i2.OperationRequest<TData, TVars> {}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i4.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Link get link =>
      (super.noSuchMethod(Invocation.getter(#link), returnValue: _FakeLink_0())
          as _i2.Link);
  @override
  Map<String, _i2.TypePolicy> get typePolicies => (super.noSuchMethod(
      Invocation.getter(#typePolicies),
      returnValue: <String, _i2.TypePolicy>{}) as Map<String, _i2.TypePolicy>);
  @override
  Map<String, Function> get updateCacheHandlers =>
      (super.noSuchMethod(Invocation.getter(#updateCacheHandlers),
          returnValue: <String, Function>{}) as Map<String, Function>);
  @override
  Map<_i5.OperationType, _i2.FetchPolicy> get defaultFetchPolicies =>
      (super.noSuchMethod(Invocation.getter(#defaultFetchPolicies),
              returnValue: <_i5.OperationType, _i2.FetchPolicy>{})
          as Map<_i5.OperationType, _i2.FetchPolicy>);
  @override
  bool get addTypename =>
      (super.noSuchMethod(Invocation.getter(#addTypename), returnValue: false)
          as bool);
  @override
  _i2.Cache get cache => (super.noSuchMethod(Invocation.getter(#cache),
      returnValue: _FakeCache_1()) as _i2.Cache);
  @override
  set cache(_i2.Cache? _cache) =>
      super.noSuchMethod(Invocation.setter(#cache, _cache),
          returnValueForMissingStub: null);
  @override
  _i3.StreamController<_i2.OperationRequest<dynamic, dynamic>>
      get requestController =>
          (super.noSuchMethod(Invocation.getter(#requestController),
                  returnValue: _FakeStreamController_2<
                      _i2.OperationRequest<dynamic, dynamic>>())
              as _i3.StreamController<_i2.OperationRequest<dynamic, dynamic>>);
  @override
  set requestController(
          _i3.StreamController<_i2.OperationRequest<dynamic, dynamic>>?
              _requestController) =>
      super.noSuchMethod(
          Invocation.setter(#requestController, _requestController),
          returnValueForMissingStub: null);
  @override
  _i3.Future<void> dispose() =>
      (super.noSuchMethod(Invocation.method(#dispose, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Stream<_i2.OperationResponse<TData, TVars>> request<TData, TVars>(
          _i2.OperationRequest<TData, TVars>? request,
          [_i2.NextTypedLink<TData, TVars>? forward]) =>
      (super.noSuchMethod(Invocation.method(#request, [request, forward]),
              returnValue: Stream<_i2.OperationResponse<TData, TVars>>.empty())
          as _i3.Stream<_i2.OperationResponse<TData, TVars>>);
  @override
  _i2.TypedLink concat(_i2.TypedLink? next) =>
      (super.noSuchMethod(Invocation.method(#concat, [next]),
          returnValue: _FakeTypedLink_3()) as _i2.TypedLink);
  @override
  _i2.TypedLink route(_i2.TypedLinkRouter<dynamic, dynamic>? route) =>
      (super.noSuchMethod(Invocation.method(#route, [route]),
          returnValue: _FakeTypedLink_3()) as _i2.TypedLink);
  @override
  _i2.TypedLink split(
          bool Function<TData, TVars>(_i2.OperationRequest<TData, TVars>)? test,
          _i2.TypedLink? left,
          [_i2.TypedLink? right = const _i2.PassthroughTypedLink()]) =>
      (super.noSuchMethod(Invocation.method(#split, [test, left, right]),
          returnValue: _FakeTypedLink_3()) as _i2.TypedLink);
}

/// A class which mocks [OperationResponse].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockOperationResponse<TData, TVars> extends _i1.Mock
    implements _i2.OperationResponse<TData, TVars> {
  MockOperationResponse() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.OperationRequest<TData, TVars> get operationRequest =>
      (super.noSuchMethod(Invocation.getter(#operationRequest),
              returnValue: _FakeOperationRequest_4<TData, TVars>())
          as _i2.OperationRequest<TData, TVars>);
  @override
  _i2.DataSource get dataSource =>
      (super.noSuchMethod(Invocation.getter(#dataSource),
          returnValue: _i2.DataSource.None) as _i2.DataSource);
  @override
  bool get loading =>
      (super.noSuchMethod(Invocation.getter(#loading), returnValue: false)
          as bool);
  @override
  bool get hasErrors =>
      (super.noSuchMethod(Invocation.getter(#hasErrors), returnValue: false)
          as bool);
}
