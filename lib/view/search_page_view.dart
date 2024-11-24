import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repo_finder/view/repository_list_view.dart';
import 'package:repo_finder/view_model/repositories_view_model.dart';

class SearchPageView extends ConsumerWidget {
  SearchPageView({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositories = ref.watch(repositoriesViewModelProvider); // リポジトリ情報を取得

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Search'),
        backgroundColor: Colors.teal, // アプリバーの背景色を変更
        elevation: 4.0, // 少し影をつけて立体感を演出
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // 横の配置を中央に
          children: [
            // リポジトリ検索のためのテキストフィールド
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter a repository keyword...',
                hintStyle: TextStyle(color: Colors.grey[600]), // ヒントテキストの色
                prefixIcon: const Icon(Icons.search,
                    color: Colors.teal), // 検索アイコンを追加
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // 角を丸くする
                  borderSide:
                      const BorderSide(color: Colors.teal, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Colors.teal, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.teal.withOpacity(0.5), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20), // 上部に余白を追加

            // 検索ボタン
            ElevatedButton(
              onPressed: () {
                final String query = _controller.text;
                // APIを叩いてリポジトリ情報を取得する処理
                ref
                    .read(repositoriesViewModelProvider.notifier)
                    .searchRepositories(query);
                // 一覧画面に遷移する
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RepositoryListView(), // 遷移先の画面
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // ボタンの背景色
                padding: const EdgeInsets.symmetric(
                    vertical: 14, horizontal: 30), // ボタンのサイズ調整
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // ボタンの角を丸くする
                ),
              ),
              child: const Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ), // ボタンのテキストを太字
              ),
            ),
          ],
        ),
      ),
    );
  }
}
