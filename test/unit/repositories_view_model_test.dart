import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:repo_finder/view_model/repositories_view_model.dart';
import 'package:http/http.dart' as http;
class MockClient extends Mock implements http.Client {}
void main() {
  setUpAll(() async {
    await dotenv.load(); // .envを読み込む
  });
  group('RepositoriesViewModel Tests', () {
    test('Initial state is empty', () {
      // ProviderContainerを作成して、状態にアクセス
      final container = ProviderContainer();
      addTearDown(container.dispose); // テスト終了後にコンテナを破棄

      // repositoriesViewModelProvider の状態を読み込む
      final repositories = container.read(repositoriesViewModelProvider);

      // 初期状態が空のリストであることを確認
      expect(repositories, []);
    });
    // モッククライアントのテストわからん
    // test('Fetch repositories updates the state', () async {
    //    // モッククライアントを作成
    //   final mockClient = MockClient();
    //   // モックレスポンスの設定
    //   const mockResponse = '''
    //   {
    //     "items": [
    //       {
    //         "id": 1,
    //         "name": "TestRepo1",
    //         "owner": {
    //           "id": 1,
    //           "login": "test1",
    //           "avatar_url": "https://example.com/test1"
    //         },
    //         "description": "Test description 1",
    //         "html_url": "https://example.com/test1",
    //         "language": "Dart",
    //         "stargazers_count": 1,
    //         "watchers_count": 1,
    //         "forks_count": 1,
    //         "open_issues_count": 1
    //       },
    //       {
    //         "id": 2,
    //         "name": "TestRepo2",
    //         "owner": {
    //           "id": 2,
    //           "login": "test2",
    //           "avatar_url": "https://example.com/test2"
    //         },
    //         "description": "Test description 2",
    //         "html_url": "https://example.com/test2",
    //         "language": "Kotlin",
    //         "stargazers_count": 2,
    //         "watchers_count": 2,
    //         "forks_count": 2,
    //         "open_issues_count": 2
    //       }
    //     ]
    //   }''';
 
    //   when(mockClient.get(any, headers: anyNamed('headers')))
    //       .thenAnswer((_) async => http.Response(mockResponse, 200));
    //   // ProviderContainerを作成して、状態にアクセス
    //   final container = ProviderContainer(
    //     overrides: [
    //       repositoriesViewModelProvider.overrideWithValue(
    //         RepositoriesViewModel(mockClient),
    //       ),
    //     ],
    //   );
    //   addTearDown(container.dispose);

    //   final repositories = container.read(repositoriesViewModelProvider.notifier);
    //   await repositories.searchRepositories('test');

    //   // モックデータと状態が一致するか確認
    //   expect(repositories.state.length, 2);
    //   expect(repositories.state.first.name, 'TestRepo1');
    
    // });
  });
}
