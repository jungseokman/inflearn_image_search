import 'package:image_search/domain/model/photo.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';

class GetphotosUsecase {
  final PhotoApiRepository repository;
  GetphotosUsecase({
    required this.repository,
  });

  Future<List<Photo>> call(String query) async {
    final result = await repository.fetch(query);

    return result.sublist(0, 3);
  }
}
