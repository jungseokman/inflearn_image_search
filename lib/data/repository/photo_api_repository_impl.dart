import 'package:image_search/data/datasource/pixabay_api.dart';
import 'package:image_search/domain/model/photo.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  final PixabayApi api;
  PhotoApiRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<Photo>> fetch(String query) async {
    final result = await api.fetch(query);
    return result.map((e) => Photo.fromJson(e)).toList();
  }
}
