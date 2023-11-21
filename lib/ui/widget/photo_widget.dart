import 'package:flutter/material.dart';
import 'package:image_search/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
    required this.photo,
  });

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            image: NetworkImage(photo.previewURL),
            fit: BoxFit.cover,
          )),
    );
  }
}
