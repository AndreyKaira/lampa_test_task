// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'regular_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegularNewsTearOff {
  const _$RegularNewsTearOff();

  _RegularNews call(
      {@HiveField(0) required String id,
      @HiveField(1) required Theme theme,
      @HiveField(2) required String title,
      @HiveField(3) required String content,
      @HiveField(4) required DateTime postTime,
      @HiveField(5) required int likes,
      @HiveField(6) required List<Comment> comments,
      @HiveField(7) required User user,
      @HiveField(8) required TypeNews type,
      @HiveField(9) String? image}) {
    return _RegularNews(
      id: id,
      theme: theme,
      title: title,
      content: content,
      postTime: postTime,
      likes: likes,
      comments: comments,
      user: user,
      type: type,
      image: image,
    );
  }
}

/// @nodoc
const $RegularNews = _$RegularNewsTearOff();

/// @nodoc
mixin _$RegularNews {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  Theme get theme => throw _privateConstructorUsedError;
  @HiveField(2)
  String get title => throw _privateConstructorUsedError;
  @HiveField(3)
  String get content => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime get postTime => throw _privateConstructorUsedError;
  @HiveField(5)
  int get likes => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Comment> get comments => throw _privateConstructorUsedError;
  @HiveField(7)
  User get user => throw _privateConstructorUsedError;
  @HiveField(8)
  TypeNews get type => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegularNewsCopyWith<RegularNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularNewsCopyWith<$Res> {
  factory $RegularNewsCopyWith(
          RegularNews value, $Res Function(RegularNews) then) =
      _$RegularNewsCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) Theme theme,
      @HiveField(2) String title,
      @HiveField(3) String content,
      @HiveField(4) DateTime postTime,
      @HiveField(5) int likes,
      @HiveField(6) List<Comment> comments,
      @HiveField(7) User user,
      @HiveField(8) TypeNews type,
      @HiveField(9) String? image});

  $ThemeCopyWith<$Res> get theme;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RegularNewsCopyWithImpl<$Res> implements $RegularNewsCopyWith<$Res> {
  _$RegularNewsCopyWithImpl(this._value, this._then);

  final RegularNews _value;
  // ignore: unused_field
  final $Res Function(RegularNews) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? theme = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? postTime = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? user = freezed,
    Object? type = freezed,
    Object? image = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postTime: postTime == freezed
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeNews,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ThemeCopyWith<$Res> get theme {
    return $ThemeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$RegularNewsCopyWith<$Res>
    implements $RegularNewsCopyWith<$Res> {
  factory _$RegularNewsCopyWith(
          _RegularNews value, $Res Function(_RegularNews) then) =
      __$RegularNewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) Theme theme,
      @HiveField(2) String title,
      @HiveField(3) String content,
      @HiveField(4) DateTime postTime,
      @HiveField(5) int likes,
      @HiveField(6) List<Comment> comments,
      @HiveField(7) User user,
      @HiveField(8) TypeNews type,
      @HiveField(9) String? image});

  @override
  $ThemeCopyWith<$Res> get theme;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$RegularNewsCopyWithImpl<$Res> extends _$RegularNewsCopyWithImpl<$Res>
    implements _$RegularNewsCopyWith<$Res> {
  __$RegularNewsCopyWithImpl(
      _RegularNews _value, $Res Function(_RegularNews) _then)
      : super(_value, (v) => _then(v as _RegularNews));

  @override
  _RegularNews get _value => super._value as _RegularNews;

  @override
  $Res call({
    Object? id = freezed,
    Object? theme = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? postTime = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? user = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_RegularNews(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postTime: postTime == freezed
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeNews,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 3)
class _$_RegularNews implements _RegularNews {
  _$_RegularNews(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.theme,
      @HiveField(2) required this.title,
      @HiveField(3) required this.content,
      @HiveField(4) required this.postTime,
      @HiveField(5) required this.likes,
      @HiveField(6) required this.comments,
      @HiveField(7) required this.user,
      @HiveField(8) required this.type,
      @HiveField(9) this.image});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final Theme theme;
  @override
  @HiveField(2)
  final String title;
  @override
  @HiveField(3)
  final String content;
  @override
  @HiveField(4)
  final DateTime postTime;
  @override
  @HiveField(5)
  final int likes;
  @override
  @HiveField(6)
  final List<Comment> comments;
  @override
  @HiveField(7)
  final User user;
  @override
  @HiveField(8)
  final TypeNews type;
  @override
  @HiveField(9)
  final String? image;

  @override
  String toString() {
    return 'RegularNews(id: $id, theme: $theme, title: $title, content: $content, postTime: $postTime, likes: $likes, comments: $comments, user: $user, type: $type, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegularNews &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.postTime, postTime) ||
                const DeepCollectionEquality()
                    .equals(other.postTime, postTime)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(postTime) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$RegularNewsCopyWith<_RegularNews> get copyWith =>
      __$RegularNewsCopyWithImpl<_RegularNews>(this, _$identity);
}

abstract class _RegularNews implements RegularNews {
  factory _RegularNews(
      {@HiveField(0) required String id,
      @HiveField(1) required Theme theme,
      @HiveField(2) required String title,
      @HiveField(3) required String content,
      @HiveField(4) required DateTime postTime,
      @HiveField(5) required int likes,
      @HiveField(6) required List<Comment> comments,
      @HiveField(7) required User user,
      @HiveField(8) required TypeNews type,
      @HiveField(9) String? image}) = _$_RegularNews;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  Theme get theme => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get content => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  DateTime get postTime => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int get likes => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  List<Comment> get comments => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  User get user => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  TypeNews get type => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegularNewsCopyWith<_RegularNews> get copyWith =>
      throw _privateConstructorUsedError;
}
