import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repo_finder/view/repository_detail.dart';
import 'package:repo_finder/view_model/repositories_view_model.dart';

class RepositoryListView extends ConsumerWidget {
  const RepositoryListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositories = ref.watch(repositoriesViewModelProvider);
    final isLoading = ref.watch(repositoriesViewModelProvider.notifier).isLoading;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Repositories'),
        backgroundColor: Colors.teal, 
        elevation: 4, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // ヒット数表示
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Hits: ${repositories.length}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            // リストビュー
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : repositories.isEmpty
                      ? const Center(
                          child: Text('No repositories found.',
                              style: TextStyle(fontSize: 18)))
                      : ListView.builder(
                          itemCount: repositories.length,
                          itemBuilder: (context, index) {
                            final repository = repositories[index];
                            return Card(
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), 
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(16.0),
                                leading: CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage(repository
                                          .owner?.avatar_url ??
                                      'https://via.placeholder.com/150'), 
                                ),
                                title: Text(
                                  repository.name ?? 'No name',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                subtitle: Text(
                                  repository.description ??
                                      'No description available.',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.link,
                                      color: Colors.teal),
                                  onPressed: () {
                                    // 詳細画面に遷移
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RepositoryDetail(
                                            repository: repository),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
