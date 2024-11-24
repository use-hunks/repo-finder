// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryModelImpl _$$RepositoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      avatar_url: json['avatar_url'] as String?,
      html_url: json['html_url'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
      stargazers_count: (json['stargazers_count'] as num?)?.toInt(),
      watchers_count: (json['watchers_count'] as num?)?.toInt(),
      forks_count: (json['forks_count'] as num?)?.toInt(),
      open_issues_count: (json['open_issues_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RepositoryModelImplToJson(
        _$RepositoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'avatar_url': instance.avatar_url,
      'html_url': instance.html_url,
      'description': instance.description,
      'language': instance.language,
      'stargazers_count': instance.stargazers_count,
      'watchers_count': instance.watchers_count,
      'forks_count': instance.forks_count,
      'open_issues_count': instance.open_issues_count,
    };
