import 'package:dio/dio.dart';
import 'package:cinemapedia_flutter/config/constants/enviroment.dart';
import 'package:cinemapedia_flutter/domain/entitites/movie.dart';

import '../domain/datasources/datasource/movies_datasource.dart';

class MoviedbDatasource extends MovieDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3/', queryParameters: {
    'api_key': Enviroment.theMovieDbKey,
    'language': 'es-MX',
  }));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final List<Movie> movies = [];

    return movies;
  }
}
