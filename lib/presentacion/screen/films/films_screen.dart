import 'package:api/api/models/movie_model.dart';
import 'package:api/api/service/movies_service.dart';
import 'package:api/config/router/router.dart';
import 'package:api/presentacion/widget/layout/drawer_custom.dart';
import 'package:flutter/material.dart';

class FilmsScreen extends StatelessWidget {
  const FilmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Films")),
      drawer: DrawerCustom(),
      body: FutureBuilder(
        future: MoviesService().getFilms(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("No Disponible"));
          } else if (snapshot.hasData) {
            final List<MovieModel> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => {router.push('/films/${data[index].id}')},
                  title: Text(data[index].title),
                  subtitle: Text(data[index].description),
                  leading: SizedBox(
                    width: 50,
                    height: 80,
                    child: data[index].image != null && data[index].image!.isNotEmpty
                        ? Image.network(
                            data[index].image!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.movie);
                            },
                          )
                        : const Icon(Icons.movie),
                  ),
                );
              },
            );
          } else {
            return Text("No Disponible");
          }
        },
      ),
    );
  }
}
