import 'package:freezed_annotation/freezed_annotation.dart';
import './repository_model.dart';
part 'repositories_model.freezed.dart';
part 'repositories_model.g.dart'; // JSONシリアライズ用のpartファイル

@freezed
class RepositoriesModel with _$RepositoriesModel {
  const factory RepositoriesModel(
      {required List<RepositoryModel> repositories}) = _RepositoriesModel;

   // JSONからRepositoriesModelを作成するファクトリーメソッド
  factory RepositoriesModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesModelFromJson(json);
}
