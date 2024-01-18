class Article {
  const Article({
    required this.title,
    required this.description,
    required this.type,
  });

  final String title;
  final String description;
  final ArticleType type;
}

enum ArticleType {
  entertainment, // エンタメ
  fashion, // ファッション
  anime, // アニメ
}

extension ArticleTypeExt on ArticleType {
  String get name {
    switch (this) {
      case ArticleType.entertainment:
        return 'エンタメ';
      case ArticleType.fashion:
        return 'ファッション';
      case ArticleType.anime:
        return 'アニメ';
    }
  }
}

void main() {
  final articles = [
    const Article(title: 'タイトル１', description: '詳細１', type: ArticleType.entertainment),
    const Article(title: 'タイトル２', description: '詳細２', type: ArticleType.fashion),
    const Article(title: 'タイトル３', description: '詳細３', type: ArticleType.anime),
  ];

  articles.forEach((article) {
    print(article.type.name);
  });
}
