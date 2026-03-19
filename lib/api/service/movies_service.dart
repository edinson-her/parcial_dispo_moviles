import 'package:api/api/models/movie_model.dart';
import 'package:api/config/const/const.dart';
import 'package:dio/dio.dart';

class MoviesService {
  final _dio = Dio();

  Future<List<MovieModel>> getFilms() async {
    final response = await _dio.get(urlFilms);
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => MovieModel.fromJson(json)).toList();
    } 
    return [];
  }

  Future <MovieModel?> getFilmsUnico(String id) async {
    final response = await _dio.get('$urlFilms/$id');
    if (response.statusCode == 200) {
      final data = response.data;
      return MovieModel.fromJson(data);
    } 
    return null;
  }

}