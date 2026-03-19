import 'package:api/api/models/movie_model.dart';
import 'package:flutter/material.dart';

class FilmDetailContent extends StatelessWidget {
  final MovieModel data;

  const FilmDetailContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (data.image != null && data.image!.isNotEmpty)
            Image.network(
              data.image!,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.grey[300],
                  child: const Icon(Icons.movie, size: 80),
                );
              },
            )
          else
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey[300],
              child: const Icon(Icons.movie, size: 80),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                if (data.runningTime.isNotEmpty)
                  Row(
                    children: [
                      const Icon(Icons.schedule, size: 20, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        data.runningTime,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 12),
                if (data.originalTitle.isNotEmpty)
                  Text(
                    'Nombre Original: ${data.originalTitle} \nDirector: ${data.director}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                const SizedBox(height: 16),
                if (data.description.isNotEmpty)
                  Text(
                    data.description,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Volver'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
