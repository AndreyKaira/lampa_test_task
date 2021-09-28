// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeTearOff {
  const _$ThemeTearOff();

  _Theme call(
      {@HiveField(0) required String id, @HiveField(1) required String name}) {
    return _Theme(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $Theme = _$ThemeTearOff();

/// @nodoc
mixin _$Theme {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeCopyWith<Theme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeCopyWith<$Res> {
  factory $ThemeCopyWith(Theme value, $Res Function(Theme) then) =
      _$ThemeCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String id, @HiveField(1) String name});
}

/// @nodoc
class _$ThemeCopyWithImpl<$Res> implements $ThemeCopyWith<$Res> {
  _$ThemeCopyWithImpl(this._value, this._then);

  final Theme _value;
  // ignore: unused_field
  final $Res Function(Theme) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ThemeCopyWith<$Res> implements $ThemeCopyWith<$Res> {
  factory _$ThemeCopyWith(_Theme value, $Res Function(_Theme) then) =
      __$ThemeCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String id, @HiveField(1) String name});
}

/// @nodoc
class __$ThemeCopyWithImpl<$Res> extends _$ThemeCopyWithImpl<$Res>
    implements _$ThemeCopyWith<$Res> {
  __$ThemeCopyWithImpl(_Theme _value, $Res Function(_Theme) _then)
      : super(_value, (v) => _then(v as _Theme));

  @override
  _Theme get _value => super._value as _Theme;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Theme(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0)
class _$_Theme implements _Theme {
  const _$_Theme(
      {@HiveField(0) required this.id, @HiveField(1) required this.name});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;

  @override
  String toString() {
    return 'Theme(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Theme &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ThemeCopyWith<_Theme> get copyWith =>
      __$ThemeCopyWithImpl<_Theme>(this, _$identity);
}

abstract class _Theme implements Theme {
  const factory _Theme(
      {@HiveField(0) required String id,
      @HiveField(1) required String name}) = _$_Theme;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeCopyWith<_Theme> get copyWith => throw _privateConstructorUsedError;
}
