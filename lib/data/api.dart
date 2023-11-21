import 'package:dio/dio.dart';
import 'package:image_search/model/photo.dart';

class PixabayApi {
  final baseUrl = 'https://pixabay.com/api';
  final key = '10711147-dc41758b93b263957026bdadb';

  Future<List<Photo>> fetch(String query) async {
    final dio = Dio();
    final response =
        await dio.get('$baseUrl/?key=$key&q=$query&image_type=photo');

    Iterable hits = response.data['hits'];

    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
