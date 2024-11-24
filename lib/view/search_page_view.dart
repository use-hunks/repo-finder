import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repo_finder/view/repository_list_view.dart';
import 'package:repo_finder/view_model/repositories_view_model.dart';

class SearchPageView extends ConsumerWidget {
  SearchPageView({super.key});

  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositories = ref.watch(repositoriesViewModelProvider); // リポジトリ情報を取得

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Search'),
        backgroundColor: Colors.teal, 
        elevation: 4.0, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // リポジトリ検索のためのテキストフィールド
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter a repository keyword...',
                  hintStyle: TextStyle(color: Colors.grey[600]), 
                  prefixIcon: const Icon(Icons.search,
                      color: Colors.teal), // 検索アイコンを追加
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a keyword.';
                  }
                  return null; // 問題がない場合は null を返す
                },
              ),
              const SizedBox(height: 20), 
              // 検索ボタン
              ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  final String query = _controller.text;
                  // APIを叩いてリポジトリ情報を取得する処理
                  ref
                      .read(repositoriesViewModelProvider.notifier)
                      .searchRepositories(query);
                  // 一覧画面に遷移する
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RepositoryListView(), 
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, 
                  padding: const EdgeInsets.symmetric(
                      vertical: 14, horizontal: 30), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), 
                  ),
                ),
                child: const Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
