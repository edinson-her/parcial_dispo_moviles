import 'package:api/api/service/movies_service.dart';
import 'package:api/presentacion/widget/film_detail_content.dart';
import 'package:flutter/material.dart';

class FilmsDetailScreen extends StatefulWidget {
  final String id;
  const FilmsDetailScreen({super.key, required this.id});

  @override
  State<FilmsDetailScreen> createState() => _FilmsDetailScreenState();
}

class _FilmsDetailScreenState extends State<FilmsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: MoviesService().getFilmsUnico(widget.id),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("No Disponible"));
          } else if (snapshot.hasData) {
            final data = snapshot.data!;
            return FilmDetailContent(data: data);
          } else {
            return const Center(child: Text("No Disponible"));
          }
        },
      ),
    );
  }
}
