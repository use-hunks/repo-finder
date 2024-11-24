// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoriesModelImpl _$$RepositoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoriesModelImpl(
      repositories: (json['repositories'] as List<dynamic>)
          .map((e) => RepositoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepositoriesModelImplToJson(
        _$RepositoriesModelImpl instance) =>
    <String, dynamic>{
      'repositories': instance.repositories,
    };
