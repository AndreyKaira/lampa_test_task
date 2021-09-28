// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_day_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeDayNewsTearOff {
  const _$ThemeDayNewsTearOff();

  _ThemeDayNews call(
      {@HiveField(0) required String id,
      @HiveField(1) required Theme theme,
      @HiveField(2) required String content,
      @HiveField(3) required TypeNews type}) {
    return _ThemeDayNews(
      id: id,
      theme: theme,
      content: content,
      type: type,
    );
  }
}

/// @nodoc
const $ThemeDayNews = _$ThemeDayNewsTearOff();

/// @nodoc
mixin _$ThemeDayNews {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  Theme get theme => throw _privateConstructorUsedError;
  @HiveField(2)
  String get content => throw _privateConstructorUsedError;
  @HiveField(3)
  TypeNews get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeDayNewsCopyWith<ThemeDayNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeDayNewsCopyWith<$Res> {
  factory $ThemeDayNewsCopyWith(
          ThemeDayNews value, $Res Function(ThemeDayNews) then) =
      _$ThemeDayNewsCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) Theme theme,
      @HiveField(2) String content,
      @HiveField(3) TypeNews type});

  $ThemeCopyWith<$Res> get theme;
}

/// @nodoc
class _$ThemeDayNewsCopyWithImpl<$Res> implements $ThemeDayNewsCopyWith<$Res> {
  _$ThemeDayNewsCopyWithImpl(this._value, this._then);

  final ThemeDayNews _value;
  // ignore: unused_field
  final $Res Function(ThemeDayNews) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? theme = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeNews,
    ));
  }

  @override
  $ThemeCopyWith<$Res> get theme {
    return $ThemeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }
}

/// @nodoc
abstract class _$ThemeDayNewsCopyWith<$Res>
    implements $ThemeDayNewsCopyWith<$Res> {
  factory _$ThemeDayNewsCopyWith(
          _ThemeDayNews value, $Res Function(_ThemeDayNews) then) =
      __$ThemeDayNewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) Theme theme,
      @HiveField(2) String content,
      @HiveField(3) TypeNews type});

  @override
  $ThemeCopyWith<$Res> get theme;
}

/// @nodoc
class __$ThemeDayNewsCopyWithImpl<$Res> extends _$ThemeDayNewsCopyWithImpl<$Res>
    implements _$ThemeDayNewsCopyWith<$Res> {
  __$ThemeDayNewsCopyWithImpl(
      _ThemeDayNews _value, $Res Function(_ThemeDayNews) _then)
      : super(_value, (v) => _then(v as _ThemeDayNews));

  @override
  _ThemeDayNews get _value => super._value as _ThemeDayNews;

  @override
  $Res call({
    Object? id = freezed,
    Object? theme = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_ThemeDayNews(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeNews,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 2)
class _$_ThemeDayNews implements _ThemeDayNews {
  const _$_ThemeDayNews(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.theme,
      @HiveField(2) required this.content,
      @HiveField(3) required this.type});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final Theme theme;
  @override
  @HiveField(2)
  final String content;
  @override
  @HiveField(3)
  final TypeNews type;

  @override
  String toString() {
    return 'ThemeDayNews(id: $id, theme: $theme, content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeDayNews &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$ThemeDayNewsCopyWith<_ThemeDayNews> get copyWith =>
      __$ThemeDayNewsCopyWithImpl<_ThemeDayNews>(this, _$identity);
}

abstract class _ThemeDayNews implements ThemeDayNews {
  const factory _ThemeDayNews(
      {@HiveField(0) required String id,
      @HiveField(1) required Theme theme,
      @HiveField(2) required String content,
      @HiveField(3) required TypeNews type}) = _$_ThemeDayNews;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  Theme get theme => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get content => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  TypeNews get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeDayNewsCopyWith<_ThemeDayNews> get copyWith =>
      throw _privateConstructorUsedError;
}
