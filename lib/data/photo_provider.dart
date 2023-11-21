import 'package:flutter/material.dart';
import 'package:image_search/presentation/home/home_view_model.dart';

class PhotoProvider extends InheritedWidget {
  const PhotoProvider({
    super.key,
    required super.child,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'No PicabayApi found in centext');
    return result!;
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return true;
  }
}
