import 'package:news_app/constants/values.dart';

import '../Data/Remote/News_Api.dart';
import '../Model/News_Model.dart';

class NewsRepository {
  final newsApi = NewsApi();

  Future<List<News>> loadFromRepo() async {
    newsApi.init();
    final responseNewsModel = await newsApi.loadFromApi();
    return responseNewsModel.articles!
        .map(
          (article) => News(
            headline: article.title ?? "No headline",
            source: article.source!.name ?? "No source ",
            date: article.publishedAt ?? "No Data",
            imageSrc: article.urlToImage ?? noImgModePhoto,
          ),
        )
        .toList();
  }
}
