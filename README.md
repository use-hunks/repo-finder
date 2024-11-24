# repo_finder

repo_finderは、GitHubリポジトリを検索して、特定の条件に一致するリポジトリを表示するFlutterアプリケーションです。

このプロジェクトは，[株式会社ゆめみ Flutter エンジニアコードチェック課題](https://github.com/yumemi-inc/flutter-engineer-codecheck)に対する回答です。

## 概要

このアプリは、GitHubのAPIを使用してリポジトリを検索し、ユーザーが指定した条件に一致するリポジトリの情報をリスト形式で表示します。リポジトリには、名前、オーナー、言語、スター数、ウォッチャー数などの基本情報が含まれます。

## 特徴

- GitHubリポジトリの検索
- リポジトリの基本情報の一覧表示
- リポジトリの詳細情報の表示
- シンプルで直感的なUI

## インストール

1. このリポジトリをクローンします
   ```bash
   git clone https://github.com/use-hunks/repo_finder.git
   ```
2. 依存関係のインストールします
    ```bash
    cd repo_finder
    flutter pub get
    ```
3. .envファイルに以下を記述します
    ```
    GITHUB_API_TOKEN = <YOUR_GITHUB_API_TOKEN>
    ```
4. アプリを実行します
    ```
    flutter run
    ```
## ポイント
- MVVMアーキテクチャの導入  
アプリケーションの構造に以前用いたことのあるMVVM（Model-View-ViewModel）アーキテクチャを採用しました。これにより、ビューとロジックが分離され、コードの可読性と保守性が向上しました。

- ローディングインディケータの導入  
ユーザー体験を向上させるため、APIからデータを取得している間にローディングインディケータを表示する機能を実装しました。これにより、処理中であることがユーザーに視覚的に伝わり、スムーズな操作感を提供します。

- 検索キーワードが入力されていない場合のAPIリクエスト防止  
検索キーワードが空の場合にはAPIリクエストを送信しないようにしました。これにより、不必要なリクエストを防ぎ、APIの無駄な呼び出しを避けることができました。

- コミットメッセージのフォーマット  
コミットメッセージには必ずコミットタイプ（例：feat、refactor）を付けるようにしました。これにより、履歴をより明確にし、コードの変更内容が一目でわかるようになりました。

- 短期間での実装  
実装自体は、1週間の間で忙しい日々が続く中、まとまった時間を取れる日が1日しかなかったため、その1日で集中して行いました。この短期間での開発を実現するために、ChatGPTを積極的に活用し、効率的に問題解決を行いました。UIについては，ビジネスロジックをしっかり整えた後に，「いい感じのUIにして」と頼んだ結果，うまく仕上がりました。