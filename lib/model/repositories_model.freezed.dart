// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repositories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoriesModel _$RepositoriesModelFromJson(Map<String, dynamic> json) {
  return _RepositoriesModel.fromJson(json);
}

/// @nodoc
mixin _$RepositoriesModel {
  List<RepositoryModel> get repositories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoriesModelCopyWith<RepositoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoriesModelCopyWith<$Res> {
  factory $RepositoriesModelCopyWith(
          RepositoriesModel value, $Res Function(RepositoriesModel) then) =
      _$RepositoriesModelCopyWithImpl<$Res, RepositoriesModel>;
  @useResult
  $Res call({List<RepositoryModel> repositories});
}

/// @nodoc
class _$RepositoriesModelCopyWithImpl<$Res, $Val extends RepositoriesModel>
    implements $RepositoriesModelCopyWith<$Res> {
  _$RepositoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
  }) {
    return _then(_value.copyWith(
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoriesModelImplCopyWith<$Res>
    implements $RepositoriesModelCopyWith<$Res> {
  factory _$$RepositoriesModelImplCopyWith(_$RepositoriesModelImpl value,
          $Res Function(_$RepositoriesModelImpl) then) =
      __$$RepositoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RepositoryModel> repositories});
}

/// @nodoc
class __$$RepositoriesModelImplCopyWithImpl<$Res>
    extends _$RepositoriesModelCopyWithImpl<$Res, _$RepositoriesModelImpl>
    implements _$$RepositoriesModelImplCopyWith<$Res> {
  __$$RepositoriesModelImplCopyWithImpl(_$RepositoriesModelImpl _value,
      $Res Function(_$RepositoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
  }) {
    return _then(_$RepositoriesModelImpl(
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoriesModelImpl implements _RepositoriesModel {
  const _$RepositoriesModelImpl(
      {required final List<RepositoryModel> repositories})
      : _repositories = repositories;

  factory _$RepositoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoriesModelImplFromJson(json);

  final List<RepositoryModel> _repositories;
  @override
  List<RepositoryModel> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  String toString() {
    return 'RepositoriesModel(repositories: $repositories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoriesModelImpl &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_repositories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoriesModelImplCopyWith<_$RepositoriesModelImpl> get copyWith =>
      __$$RepositoriesModelImplCopyWithImpl<_$RepositoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoriesModelImplToJson(
      this,
    );
  }
}

abstract class _RepositoriesModel implements RepositoriesModel {
  const factory _RepositoriesModel(
          {required final List<RepositoryModel> repositories}) =
      _$RepositoriesModelImpl;

  factory _RepositoriesModel.fromJson(Map<String, dynamic> json) =
      _$RepositoriesModelImpl.fromJson;

  @override
  List<RepositoryModel> get repositories;
  @override
  @JsonKey(ignore: true)
  _$$RepositoriesModelImplCopyWith<_$RepositoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
