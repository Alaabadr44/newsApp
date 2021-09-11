import 'package:dio/dio.dart';

import '../../constants/Api_info.dart';
import '../../constants/kays.dart';
import '../entitiesModel/Res_NewsModel.dart';

class NewsApi {
  Dio dio = Dio();

  void init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiInfo.baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }

  Future<ResponseNewsModel> loadFromApi() async {
    final endPoint = "${ApiInfo.topHeadlines}";
    final response = await dio.get(
      endPoint,
      queryParameters: {
        "apiKey": "$apiKey",
        "country": "eg",
      },
    );
    return ResponseNewsModel.fromJson(response.data as Map<String, dynamic>);
  }
}
