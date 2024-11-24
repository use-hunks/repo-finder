
import 'package:flutter/material.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({super.key});

  @override
  _SearchPageViewState createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                // TODO: APIを叩いてリポジトリ情報を取得する処理を書く
                // TODO: 一覧画面に遷移する
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
