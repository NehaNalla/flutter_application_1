import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String thumbnailUrl;

  const MovieCard({super.key, required this.title, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(thumbnailUrl),
      title: Text(title),
    );
  }
}
