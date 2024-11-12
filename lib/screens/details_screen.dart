import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            movie['image'] != null
                ? Image.network(movie['image']['original'])
                : Container(),
            SizedBox(height: 10),
            Text(
              movie['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(movie['summary'] ?? "No summary available"),
          ],
        ),
      ),
    );
  }
}
