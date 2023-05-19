import 'dart:convert';

Articles articlesFromJson(Map<String,dynamic> data) => Articles.fromJson(data);

String articlesToJson(Articles data) => json.encode(data.toJson());

class Articles {
  int? success;
  String? message;
  Data? data;
  DateTime? timestamp;

  Articles({
    this.success,
    this.message,
    this.data,
    this.timestamp,
  });

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
        "timestamp": timestamp?.toIso8601String(),
      };
}

class Data {
  List<News>? news;
  List<Article>? trandingBulletin;
  String? specialityName;
  List<dynamic>? latestArticle;
  List<Article>? exploreArticle;
  List<Article>? trandingArticle;
  Article? article;
  List<Article>? bulletin;
  int? sId;

  Data({
    this.news,
    this.trandingBulletin,
    this.specialityName,
    this.latestArticle,
    this.exploreArticle,
    this.trandingArticle,
    this.article,
    this.bulletin,
    this.sId,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        news: json["news"] == null
            ? []
            : List<News>.from(json["news"]!.map((x) => News.fromJson(x))),
        trandingBulletin: json["trandingBulletin"] == null
            ? []
            : List<Article>.from(
                json["trandingBulletin"]!.map((x) => Article.fromJson(x))),
        specialityName: json["specialityName"],
        latestArticle: json["latestArticle"] == null
            ? []
            : List<dynamic>.from(json["latestArticle"]!.map((x) => x)),
        exploreArticle: json["exploreArticle"] == null
            ? []
            : List<Article>.from(
                json["exploreArticle"]!.map((x) => Article.fromJson(x))),
        trandingArticle: json["trandingArticle"] == null
            ? []
            : List<Article>.from(
                json["trandingArticle"]!.map((x) => Article.fromJson(x))),
        article:
            json["article"] == null ? null : Article.fromJson(json["article"]),
        bulletin: json["bulletin"] == null
            ? []
            : List<Article>.from(
                json["bulletin"]!.map((x) => Article.fromJson(x))),
        sId: json["sId"],
      );

  Map<String, dynamic> toJson() => {
        "news": news == null
            ? []
            : List<dynamic>.from(news!.map((x) => x.toJson())),
        "trandingBulletin": trandingBulletin == null
            ? []
            : List<dynamic>.from(trandingBulletin!.map((x) => x.toJson())),
        "specialityName": specialityName,
        "latestArticle": latestArticle == null
            ? []
            : List<dynamic>.from(latestArticle!.map((x) => x)),
        "exploreArticle": exploreArticle == null
            ? []
            : List<dynamic>.from(exploreArticle!.map((x) => x.toJson())),
        "trandingArticle": trandingArticle == null
            ? []
            : List<dynamic>.from(trandingArticle!.map((x) => x.toJson())),
        "article": article?.toJson(),
        "bulletin": bulletin == null
            ? []
            : List<dynamic>.from(bulletin!.map((x) => x.toJson())),
        "sId": sId,
      };
}

class Article {
  int? id;
  String? articleTitle;
  String? redirectLink;
  String? articleImg;
  String? articleDescription;
  String? specialityId;
  int? rewardPoints;
  String? keywordsList;
  String? articleUniqueId;
  int? articleType;
  DateTime? createdAt;

  Article({
    this.id,
    this.articleTitle,
    this.redirectLink,
    this.articleImg,
    this.articleDescription,
    this.specialityId,
    this.rewardPoints,
    this.keywordsList,
    this.articleUniqueId,
    this.articleType,
    this.createdAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        articleTitle: json["articleTitle"],
        redirectLink: json["redirectLink"],
        articleImg: json["articleImg"],
        articleDescription: json["articleDescription"],
        specialityId: json["specialityId"],
        rewardPoints: json["rewardPoints"],
        keywordsList: json["keywordsList"],
        articleUniqueId: json["articleUniqueId"],
        articleType: json["articleType"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "articleTitle": articleTitle,
        "redirectLink": redirectLink,
        "articleImg": articleImg,
        "articleDescription": articleDescription,
        "specialityId": specialityId,
        "rewardPoints": rewardPoints,
        "keywordsList": keywordsList,
        "articleUniqueId": articleUniqueId,
        "articleType": articleType,
        "createdAt": createdAt?.toIso8601String(),
      };
}

class News {
  int? id;
  String? title;
  String? url;
  String? urlToImage;
  String? description;
  String? speciality;
  String? newsUniqueId;
  int? trendingLatest;
  DateTime? publishedAt;

  News({
    this.id,
    this.title,
    this.url,
    this.urlToImage,
    this.description,
    this.speciality,
    this.newsUniqueId,
    this.trendingLatest,
    this.publishedAt,
  });

  factory News.fromJson(Map<String, dynamic> json) => News(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        description: json["description"],
        speciality: json["speciality"],
        newsUniqueId: json["newsUniqueId"],
        trendingLatest: json["trendingLatest"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "url": url,
        "urlToImage": urlToImage,
        "description": description,
        "speciality": speciality,
        "newsUniqueId": newsUniqueId,
        "trendingLatest": trendingLatest,
        "publishedAt": publishedAt?.toIso8601String(),
      };
}
