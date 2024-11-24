class RepositoryModel {
  final String id;
  final String name;
  final String fullName;
  final String ownerName;
  final String ownerIconUrl;
  final String language;
  final int stars;
  final int watchers;
  final int forks;
  final int openIssues;

  RepositoryModel({
    required this.id,
    required this.name,
    required this.fullName,
    required this.ownerName,
    required this.ownerIconUrl,
    required this.language,
    required this.stars,
    required this.watchers,
    required this.forks,
    required this.openIssues,
  });

  // JSONからRepositoryモデルに変換するファクトリーメソッド
  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    return RepositoryModel(
      id: json['id'].toString(),
      name: json['name'],
      fullName: json['full_name'],
      ownerName: json['owner']['login'],
      ownerIconUrl: json['owner']['avatar_url'],
      language: json['language'] ?? 'N/A', // 言語が指定されていない場合は 'N/A'
      stars: json['stargazers_count'],
      watchers: json['watchers_count'],
      forks: json['forks_count'],
      openIssues: json['open_issues_count'],
    );
  }
}
