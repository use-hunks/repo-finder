import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repo_finder/view_model/repositories_view_model.dart';

class RepositoryListView extends ConsumerWidget {
  const RepositoryListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // RepositoriesViewModelの状態を取得
    final repositories = ref.watch(repositoriesViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Repositories'),
      ),
      body: Column(
        children: [
          // リストビュー
          Expanded(
            child: repositories.isEmpty
                ? const Center(child: Text('No repositories found.'))
                : ListView.builder(
                    itemCount: repositories.length,
                    itemBuilder: (context, index) {
                      final repository = repositories[index];
                      return ListTile(
                        title: Text(repository.name ?? 'No name'),
                        trailing: IconButton(
                          icon: const Icon(Icons.link),
                          onPressed: () {
                            // TODO: 詳細画面に遷移
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
