// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) {
  return _RepositoryModel.fromJson(json);
}

/// @nodoc
mixin _$RepositoryModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError; //リポジトリ名
  OwnerModel? get owner => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int? get stargazers_count => throw _privateConstructorUsedError;
  int? get watchers_count => throw _privateConstructorUsedError;
  int? get forks_count => throw _privateConstructorUsedError;
  int? get open_issues_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryModelCopyWith<RepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryModelCopyWith<$Res> {
  factory $RepositoryModelCopyWith(
          RepositoryModel value, $Res Function(RepositoryModel) then) =
      _$RepositoryModelCopyWithImpl<$Res, RepositoryModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      OwnerModel? owner,
      String? avatar_url,
      String? html_url,
      String? description,
      String? language,
      int? stargazers_count,
      int? watchers_count,
      int? forks_count,
      int? open_issues_count});

  $OwnerModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RepositoryModelCopyWithImpl<$Res, $Val extends RepositoryModel>
    implements $RepositoryModelCopyWith<$Res> {
  _$RepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? owner = freezed,
    Object? avatar_url = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? stargazers_count = freezed,
    Object? watchers_count = freezed,
    Object? forks_count = freezed,
    Object? open_issues_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel?,
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazers_count: freezed == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      watchers_count: freezed == watchers_count
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      forks_count: freezed == forks_count
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int?,
      open_issues_count: freezed == open_issues_count
          ? _value.open_issues_count
          : open_issues_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryModelImplCopyWith<$Res>
    implements $RepositoryModelCopyWith<$Res> {
  factory _$$RepositoryModelImplCopyWith(_$RepositoryModelImpl value,
          $Res Function(_$RepositoryModelImpl) then) =
      __$$RepositoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      OwnerModel? owner,
      String? avatar_url,
      String? html_url,
      String? description,
      String? language,
      int? stargazers_count,
      int? watchers_count,
      int? forks_count,
      int? open_issues_count});

  @override
  $OwnerModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$RepositoryModelImplCopyWithImpl<$Res>
    extends _$RepositoryModelCopyWithImpl<$Res, _$RepositoryModelImpl>
    implements _$$RepositoryModelImplCopyWith<$Res> {
  __$$RepositoryModelImplCopyWithImpl(
      _$RepositoryModelImpl _value, $Res Function(_$RepositoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? owner = freezed,
    Object? avatar_url = freezed,
    Object? html_url = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? stargazers_count = freezed,
    Object? watchers_count = freezed,
    Object? forks_count = freezed,
    Object? open_issues_count = freezed,
  }) {
    return _then(_$RepositoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel?,
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: freezed == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazers_count: freezed == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      watchers_count: freezed == watchers_count
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int?,
      forks_count: freezed == forks_count
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int?,
      open_issues_count: freezed == open_issues_count
          ? _value.open_issues_count
          : open_issues_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryModelImpl implements _RepositoryModel {
  const _$RepositoryModelImpl(
      {required this.id,
      required this.name,
      required this.owner,
      required this.avatar_url,
      required this.html_url,
      required this.description,
      required this.language,
      required this.stargazers_count,
      required this.watchers_count,
      required this.forks_count,
      required this.open_issues_count});

  factory _$RepositoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
//リポジトリ名
  @override
  final OwnerModel? owner;
  @override
  final String? avatar_url;
  @override
  final String? html_url;
  @override
  final String? description;
  @override
  final String? language;
  @override
  final int? stargazers_count;
  @override
  final int? watchers_count;
  @override
  final int? forks_count;
  @override
  final int? open_issues_count;

  @override
  String toString() {
    return 'RepositoryModel(id: $id, name: $name, owner: $owner, avatar_url: $avatar_url, html_url: $html_url, description: $description, language: $language, stargazers_count: $stargazers_count, watchers_count: $watchers_count, forks_count: $forks_count, open_issues_count: $open_issues_count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url) &&
            (identical(other.html_url, html_url) ||
                other.html_url == html_url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.stargazers_count, stargazers_count) ||
                other.stargazers_count == stargazers_count) &&
            (identical(other.watchers_count, watchers_count) ||
                other.watchers_count == watchers_count) &&
            (identical(other.forks_count, forks_count) ||
                other.forks_count == forks_count) &&
            (identical(other.open_issues_count, open_issues_count) ||
                other.open_issues_count == open_issues_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      owner,
      avatar_url,
      html_url,
      description,
      language,
      stargazers_count,
      watchers_count,
      forks_count,
      open_issues_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryModelImplCopyWith<_$RepositoryModelImpl> get copyWith =>
      __$$RepositoryModelImplCopyWithImpl<_$RepositoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryModelImplToJson(
      this,
    );
  }
}

abstract class _RepositoryModel implements RepositoryModel {
  const factory _RepositoryModel(
      {required final int id,
      required final String? name,
      required final OwnerModel? owner,
      required final String? avatar_url,
      required final String? html_url,
      required final String? description,
      required final String? language,
      required final int? stargazers_count,
      required final int? watchers_count,
      required final int? forks_count,
      required final int? open_issues_count}) = _$RepositoryModelImpl;

  factory _RepositoryModel.fromJson(Map<String, dynamic> json) =
      _$RepositoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override //リポジトリ名
  OwnerModel? get owner;
  @override
  String? get avatar_url;
  @override
  String? get html_url;
  @override
  String? get description;
  @override
  String? get language;
  @override
  int? get stargazers_count;
  @override
  int? get watchers_count;
  @override
  int? get forks_count;
  @override
  int? get open_issues_count;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryModelImplCopyWith<_$RepositoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
