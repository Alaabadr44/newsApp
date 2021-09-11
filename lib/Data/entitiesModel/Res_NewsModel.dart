class ResponseNewsModel {
  String?status;
  int?totalResults;
  List<Articles>?articles;

  ResponseNewsModel({
    required String status,
    required int totalResults,
    required List<Articles> articles,
  }) {
    this.status = status;
    this.totalResults = totalResults;
    this.articles = articles;
  }

  

  ResponseNewsModel.fromJson(Map<String, dynamic> json) {
   status = json['status'];
   totalResults = json['totalResults'];
    if (json['articles'] != null) {
     articles = <Articles>[];
      json['articles'].forEach((v) {
       articles!.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles({
    required Source source,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) {
    this.source = source;
    this.author = author;
    this.title = title;
    this.description = description;
    this.url = url;
    this.urlToImage = urlToImage;
    this.publishedAt = publishedAt;
    this.content = content;
  }

  

  Articles.fromJson(Map<String, dynamic> json) {
   source =
        json['source'] != null ? new Source.fromJson(json['source']) : null;
   author = json['author'];
   title = json['title'];
   description = json['description'];
   url = json['url'];
   urlToImage = json['urlToImage'];
   publishedAt = json['publishedAt'];
   content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.source != null) {
      data['source'] = this.source!.toJson();
    }
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }
}

class Source {
  String?id;
  String?name;

  Source({
    String? id,
 required   String name,
  }) {
    this.id = id;
    this.name = name;
  }



  Source.fromJson(Map<String, dynamic> json) {
   id = json['id'];
   name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
