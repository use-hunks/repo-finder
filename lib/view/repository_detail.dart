import 'package:flutter/material.dart';

class RepositoryDetail extends StatelessWidget {
  final dynamic repository;

  const RepositoryDetail({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Detail'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // スクロール可能にして長い内容でも表示
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // リポジトリの名前表示
              Text(
                "Name: ${repository.name}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // オーナーの情報
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(repository.owner.avatar_url ??
                        'https://via.placeholder.com/150'),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Owner: ${repository.owner.login}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // リポジトリの詳細情報
              _buildInfoRow("Language", repository.language ?? 'N/A'),
              _buildInfoRow("Stars", repository.stargazers_count.toString()),
              _buildInfoRow("Watchers", repository.watchers_count.toString()),
              _buildInfoRow("Forks", repository.forks_count.toString()),
              _buildInfoRow(
                  "Open Issues", repository.open_issues_count.toString()),
              _buildInfoRow("Link", repository.html_url),
            ],
          ),
        ),
      ),
    );
  }

  // 共通の情報行を作成するウィジェット
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(value,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,),
          ),
        ],
      ),
    );
  }
}
