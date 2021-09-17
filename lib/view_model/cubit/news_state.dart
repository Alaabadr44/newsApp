part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class LoadingNews extends NewsState {}

class ErorrLoadingNews extends NewsState {
final  String massage;
  ErorrLoadingNews({
    required this.massage,
  });
}

class LoadedNews extends NewsState {
  final List<News> news;
  LoadedNews({
    required this.news,
  });
}
