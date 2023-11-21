import 'package:dio/dio.dart';

class PixabayApi {
  static const baseUrl = 'https://pixabay.com/api';
  static const key = '10711147-dc41758b93b263957026bdadb';
  final dio = Dio();

  Future<Iterable> fetch(String query) async {
    final response =
        await dio.get('$baseUrl/?key=$key&q=$query&image_type=photo');

    Iterable hits = response.data['hits'];

    return hits;
  }
}
