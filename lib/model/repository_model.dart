import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_finder/model/owner_model.dart';

part 'repository_model.freezed.dart';
part 'repository_model.g.dart'; // JSON変換に必要

@freezed
class RepositoryModel with _$RepositoryModel {
  const factory RepositoryModel({
    required int id,
    required String? name, //リポジトリ名
    required OwnerModel? owner,
    required String? html_url,
    required String? description,
    required String? language,
    required int? stargazers_count,
    required int? watchers_count,
    required int? forks_count,
    required int? open_issues_count,
  }) = _RepositoryModel;

  // JSONからRepositoryモデルに変換するファクトリーメソッド
  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryModelFromJson(json);
}
