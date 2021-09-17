import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Model/news_model.dart';
import '../../repositories/news_repository.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this._repository) : super(NewsInitial());

  final NewsRepository _repository;

  List<News> news = [];
  Future<void> load() async {
    emit(LoadingNews());
  //  await Future.delayed(Duration(seconds: 3),()=>print("waiting ...."));

    try {
      news = await _repository.loadFromRepo();
      emit(LoadedNews(news: news));
    } on Exception catch (e) {
      emit(
        ErorrLoadingNews(
          massage: e.toString(),
        ),
      );
    }
  }
}
