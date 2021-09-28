// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'child.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChildTearOff {
  const _$ChildTearOff();

  _Child call(
      {@HiveField(0) required String id,
      @HiveField(1) required GenderEnum gender,
      @HiveField(2) required DateTime bithday}) {
    return _Child(
      id: id,
      gender: gender,
      bithday: bithday,
    );
  }
}

/// @nodoc
const $Child = _$ChildTearOff();

/// @nodoc
mixin _$Child {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  GenderEnum get gender => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get bithday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildCopyWith<Child> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCopyWith<$Res> {
  factory $ChildCopyWith(Child value, $Res Function(Child) then) =
      _$ChildCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) GenderEnum gender,
      @HiveField(2) DateTime bithday});
}

/// @nodoc
class _$ChildCopyWithImpl<$Res> implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._value, this._then);

  final Child _value;
  // ignore: unused_field
  final $Res Function(Child) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? gender = freezed,
    Object? bithday = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum,
      bithday: bithday == freezed
          ? _value.bithday
          : bithday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChildCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$ChildCopyWith(_Child value, $Res Function(_Child) then) =
      __$ChildCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) GenderEnum gender,
      @HiveField(2) DateTime bithday});
}

/// @nodoc
class __$ChildCopyWithImpl<$Res> extends _$ChildCopyWithImpl<$Res>
    implements _$ChildCopyWith<$Res> {
  __$ChildCopyWithImpl(_Child _value, $Res Function(_Child) _then)
      : super(_value, (v) => _then(v as _Child));

  @override
  _Child get _value => super._value as _Child;

  @override
  $Res call({
    Object? id = freezed,
    Object? gender = freezed,
    Object? bithday = freezed,
  }) {
    return _then(_Child(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum,
      bithday: bithday == freezed
          ? _value.bithday
          : bithday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 4)
class _$_Child implements _Child {
  const _$_Child(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.gender,
      @HiveField(2) required this.bithday});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final GenderEnum gender;
  @override
  @HiveField(2)
  final DateTime bithday;

  @override
  String toString() {
    return 'Child(id: $id, gender: $gender, bithday: $bithday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Child &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.bithday, bithday) ||
                const DeepCollectionEquality().equals(other.bithday, bithday)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(bithday);

  @JsonKey(ignore: true)
  @override
  _$ChildCopyWith<_Child> get copyWith =>
      __$ChildCopyWithImpl<_Child>(this, _$identity);
}

abstract class _Child implements Child {
  const factory _Child(
      {@HiveField(0) required String id,
      @HiveField(1) required GenderEnum gender,
      @HiveField(2) required DateTime bithday}) = _$_Child;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  GenderEnum get gender => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  DateTime get bithday => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChildCopyWith<_Child> get copyWith => throw _privateConstructorUsedError;
}
