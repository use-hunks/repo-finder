import 'package:flutter/material.dart';

class RepositoryDetail extends StatelessWidget{
  final dynamic repository;
  const RepositoryDetail({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Detail'),
      ),
      body: Column(
        children: [
          // リポジトリの詳細情報を表示する
          Text("Name: ${repository.name}", style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage(repository.owner.avatar_url??"https://www.google.com/imgres?q=panda&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F0f%2FGrosser_Panda.JPG%2F640px-Grosser_Panda.JPG&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FGiant_panda&docid=LND7YqRqFVVnjM&tbnid=VnnmxDJtpkElkM&vet=12ahUKEwj16pb2x_SJAxUTqVYBHTysGFoQM3oECBoQAA..i&w=640&h=427&hcb=2&ved=2ahUKEwj16pb2x_SJAxUTqVYBHTysGFoQM3oECBoQAA"),
              ),
              const SizedBox(width: 8),
              Text("Owner: ${repository.owner.login}",
                  style: const TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 16),
          Text("Language: ${repository.language ?? 'N/A'}"),
          Text("Stars: ${repository.stargazers_count}"),
          Text("Watchers: ${repository.watchers_count}"),
          Text("Forks: ${repository.forks_count}"),
          Text("Open Issues: ${repository.open_issues_count}"),
        ],
      ),
    );
  }
}