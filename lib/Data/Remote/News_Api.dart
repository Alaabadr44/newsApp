import 'package:dio/dio.dart';
import 'package:news_app/Data/entitiesModel/Res_NewsModel.dart';
import 'package:news_app/constants/kays.dart';

class NewsApi {
  Dio _dio = Dio();
  Future<ResponseNewsModel> init() async {
    final endPoint =
        "https://newsapi.org/v2/everything?q=tesla&from=2021-08-09&sortBy=publishedAt&apiKey=$apiKey";
    final response = await _dio.get(endPoint);

    return ResponseNewsModel.fromJson(response.data as Map<String,dynamic>);
  }
}
