import 'package:flutter/material.dart';
import 'package:image_search/data/datasource/pixabay_api.dart';
import 'package:image_search/data/repository/photo_api_repository_impl.dart';
import 'package:image_search/data/photo_provider.dart';
import 'package:image_search/domain/usecase/get_photos_usecase.dart';
import 'package:image_search/presentation/home/home_screen.dart';
import 'package:image_search/presentation/home/home_view_model.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: PhotoProvider(
        viewModel: HomeViewModel(GetphotosUsecase(
            repository: PhotoApiRepositoryImpl(api: PixabayApi()))),
        child: const HomeScreen(),
      ),
    );
  }
}
