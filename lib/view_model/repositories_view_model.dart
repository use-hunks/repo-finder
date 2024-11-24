import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import './../model/repository_model.dart';

part 'repositories_view_model.g.dart';

@riverpod
class RepositoriesViewModel extends _$RepositoriesViewModel {
  @override
  List<RepositoryModel> build() {
    return [];
  }

  Future<void> searchRepositories(String query) async {
    state = []; // 検索を開始する前に現在の結果をクリア

    final url = Uri.parse(
      'https://api.github.com/search/repositories?q=$query',
    );
    final response = await http.get(url, headers: {
      'Accept': 'application/vnd.github+json',
      'Authorization': 'Bearer ${dotenv.get('GITHUB_API_TOKEN')}',
      'X-GitHub-API-Version': '2022-11-28',
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final repositories = (data['items'] as List)
          .map((repo) => RepositoryModel.fromJson(repo))
          .toList();
      state = repositories; // 検索結果を状態に設定
    } else {
      throw Exception('Failed to load repositories');
    }
  }
}
