// Mocks generated by Mockito 5.4.4 from annotations
// in FantasyE/test/infrastructure/avatar/repository/avatar_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:FantasyE/domain/avatar/avatar.dart' as _i6;
import 'package:FantasyE/domain/core/value_objects.dart' as _i7;
import 'package:FantasyE/infrastructure/avatar/api_client.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i2;
import 'package:http/http.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFlutterSecureStorage_0 extends _i1.SmartFake
    implements _i2.FlutterSecureStorage {
  _FakeFlutterSecureStorage_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_1 extends _i1.SmartFake implements _i3.Response {
  _FakeResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiClient extends _i1.Mock implements _i4.ApiClient {
  MockApiClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FlutterSecureStorage get secureStorage => (super.noSuchMethod(
        Invocation.getter(#secureStorage),
        returnValue: _FakeFlutterSecureStorage_0(
          this,
          Invocation.getter(#secureStorage),
        ),
      ) as _i2.FlutterSecureStorage);

  @override
  _i5.Future<_i3.Response> fetchData() => (super.noSuchMethod(
        Invocation.method(
          #fetchData,
          [],
        ),
        returnValue: _i5.Future<_i3.Response>.value(_FakeResponse_1(
          this,
          Invocation.method(
            #fetchData,
            [],
          ),
        )),
      ) as _i5.Future<_i3.Response>);

  @override
  _i5.Stream<_i3.Response> watchAll() => (super.noSuchMethod(
        Invocation.method(
          #watchAll,
          [],
        ),
        returnValue: _i5.Stream<_i3.Response>.empty(),
      ) as _i5.Stream<_i3.Response>);

  @override
  _i5.Future<_i3.Response> createNewAvatar(_i6.Avatar? avatar) =>
      (super.noSuchMethod(
        Invocation.method(
          #createNewAvatar,
          [avatar],
        ),
        returnValue: _i5.Future<_i3.Response>.value(_FakeResponse_1(
          this,
          Invocation.method(
            #createNewAvatar,
            [avatar],
          ),
        )),
      ) as _i5.Future<_i3.Response>);

  @override
  _i5.Future<_i3.Response> updateAvatar(_i6.Avatar? avatar) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateAvatar,
          [avatar],
        ),
        returnValue: _i5.Future<_i3.Response>.value(_FakeResponse_1(
          this,
          Invocation.method(
            #updateAvatar,
            [avatar],
          ),
        )),
      ) as _i5.Future<_i3.Response>);

  @override
  _i5.Future<_i3.Response> deleteAvatar(_i6.Avatar? avatar) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAvatar,
          [avatar],
        ),
        returnValue: _i5.Future<_i3.Response>.value(_FakeResponse_1(
          this,
          Invocation.method(
            #deleteAvatar,
            [avatar],
          ),
        )),
      ) as _i5.Future<_i3.Response>);

  @override
  _i5.Future<_i3.Response> addAvatar(_i7.UniqueId? avatarId) =>
      (super.noSuchMethod(
        Invocation.method(
          #addAvatar,
          [avatarId],
        ),
        returnValue: _i5.Future<_i3.Response>.value(_FakeResponse_1(
          this,
          Invocation.method(
            #addAvatar,
            [avatarId],
          ),
        )),
      ) as _i5.Future<_i3.Response>);
}
