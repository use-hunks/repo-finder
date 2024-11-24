import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_model.freezed.dart';
part 'repository_model.g.dart'; // JSON変換に必要

@freezed
class RepositoryModel with _$RepositoryModel {
  const factory RepositoryModel({
    required String id,
    required String name,
    required String fullName,
    required String ownerName,
    required String ownerIconUrl,
    required String language,
    required int stars,
    required int watchers,
    required int forks,
    required int openIssues,
  }) = _RepositoryModel;

  // JSONからRepositoryモデルに変換するファクトリーメソッド
  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);
}
