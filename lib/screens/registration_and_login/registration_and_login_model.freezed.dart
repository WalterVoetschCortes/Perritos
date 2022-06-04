// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_and_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationAndLoginModel {
  RegistrationAndLogin get currentRegistrationAndLoginScreen =>
      throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationAndLoginModelCopyWith<RegistrationAndLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationAndLoginModelCopyWith<$Res> {
  factory $RegistrationAndLoginModelCopyWith(RegistrationAndLoginModel value,
          $Res Function(RegistrationAndLoginModel) then) =
      _$RegistrationAndLoginModelCopyWithImpl<$Res>;
  $Res call(
      {RegistrationAndLogin currentRegistrationAndLoginScreen,
      String password,
      String confirmPassword,
      String email});
}

/// @nodoc
class _$RegistrationAndLoginModelCopyWithImpl<$Res>
    implements $RegistrationAndLoginModelCopyWith<$Res> {
  _$RegistrationAndLoginModelCopyWithImpl(this._value, this._then);

  final RegistrationAndLoginModel _value;
  // ignore: unused_field
  final $Res Function(RegistrationAndLoginModel) _then;

  @override
  $Res call({
    Object? currentRegistrationAndLoginScreen = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      currentRegistrationAndLoginScreen: currentRegistrationAndLoginScreen ==
              freezed
          ? _value.currentRegistrationAndLoginScreen
          : currentRegistrationAndLoginScreen // ignore: cast_nullable_to_non_nullable
              as RegistrationAndLogin,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RegistrationAndLoginModelCopyWith<$Res>
    implements $RegistrationAndLoginModelCopyWith<$Res> {
  factory _$$_RegistrationAndLoginModelCopyWith(
          _$_RegistrationAndLoginModel value,
          $Res Function(_$_RegistrationAndLoginModel) then) =
      __$$_RegistrationAndLoginModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {RegistrationAndLogin currentRegistrationAndLoginScreen,
      String password,
      String confirmPassword,
      String email});
}

/// @nodoc
class __$$_RegistrationAndLoginModelCopyWithImpl<$Res>
    extends _$RegistrationAndLoginModelCopyWithImpl<$Res>
    implements _$$_RegistrationAndLoginModelCopyWith<$Res> {
  __$$_RegistrationAndLoginModelCopyWithImpl(
      _$_RegistrationAndLoginModel _value,
      $Res Function(_$_RegistrationAndLoginModel) _then)
      : super(_value, (v) => _then(v as _$_RegistrationAndLoginModel));

  @override
  _$_RegistrationAndLoginModel get _value =>
      super._value as _$_RegistrationAndLoginModel;

  @override
  $Res call({
    Object? currentRegistrationAndLoginScreen = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_RegistrationAndLoginModel(
      currentRegistrationAndLoginScreen: currentRegistrationAndLoginScreen ==
              freezed
          ? _value.currentRegistrationAndLoginScreen
          : currentRegistrationAndLoginScreen // ignore: cast_nullable_to_non_nullable
              as RegistrationAndLogin,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegistrationAndLoginModel implements _RegistrationAndLoginModel {
  const _$_RegistrationAndLoginModel(
      {required this.currentRegistrationAndLoginScreen,
      required this.password,
      required this.confirmPassword,
      required this.email});

  @override
  final RegistrationAndLogin currentRegistrationAndLoginScreen;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationAndLoginModel(currentRegistrationAndLoginScreen: $currentRegistrationAndLoginScreen, password: $password, confirmPassword: $confirmPassword, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationAndLoginModel &&
            const DeepCollectionEquality().equals(
                other.currentRegistrationAndLoginScreen,
                currentRegistrationAndLoginScreen) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentRegistrationAndLoginScreen),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_RegistrationAndLoginModelCopyWith<_$_RegistrationAndLoginModel>
      get copyWith => __$$_RegistrationAndLoginModelCopyWithImpl<
          _$_RegistrationAndLoginModel>(this, _$identity);
}

abstract class _RegistrationAndLoginModel implements RegistrationAndLoginModel {
  const factory _RegistrationAndLoginModel(
      {required final RegistrationAndLogin currentRegistrationAndLoginScreen,
      required final String password,
      required final String confirmPassword,
      required final String email}) = _$_RegistrationAndLoginModel;

  @override
  RegistrationAndLogin get currentRegistrationAndLoginScreen =>
      throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get confirmPassword => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationAndLoginModelCopyWith<_$_RegistrationAndLoginModel>
      get copyWith => throw _privateConstructorUsedError;
}
