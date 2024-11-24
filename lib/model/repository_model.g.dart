// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryModelImpl _$$RepositoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      ownerName: json['ownerName'] as String,
      ownerIconUrl: json['ownerIconUrl'] as String,
      language: json['language'] as String,
      stars: (json['stars'] as num).toInt(),
      watchers: (json['watchers'] as num).toInt(),
      forks: (json['forks'] as num).toInt(),
      openIssues: (json['openIssues'] as num).toInt(),
    );

Map<String, dynamic> _$$RepositoryModelImplToJson(
        _$RepositoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'ownerName': instance.ownerName,
      'ownerIconUrl': instance.ownerIconUrl,
      'language': instance.language,
      'stars': instance.stars,
      'watchers': instance.watchers,
      'forks': instance.forks,
      'openIssues': instance.openIssues,
    };
