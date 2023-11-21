import 'dart:async';

import 'package:image_search/domain/model/photo.dart';
import 'package:image_search/domain/usecase/get_photos_usecase.dart';

class HomeViewModel {
  HomeViewModel(this.getphotosUsecase);

  final GetphotosUsecase getphotosUsecase;
  final _photoScreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStram => _photoScreamController.stream;

  Future<void> fetch(String query) async {
    final result = await getphotosUsecase(query);
    _photoScreamController.add(result);
  }
}
