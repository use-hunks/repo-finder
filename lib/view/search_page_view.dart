
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repo_finder/view/repository_list_view.dart';
import 'package:repo_finder/view_model/repositories_view_model.dart';

class SearchPageView extends ConsumerWidget {
  SearchPageView({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter a repository keyword...',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final String query = _controller.text;
                // APIを叩いてリポジトリ情報を取得する処理を書く
                ref.read(repositoriesViewModelProvider.notifier).searchRepositories(query);
                // 一覧画面に遷移する
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RepositoryListView(), // 遷移先の画面
                  ),
                );
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
