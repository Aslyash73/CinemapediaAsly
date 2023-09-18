import 'package:cinemapedia_flutter/domain/datasources/datasource/models/moviedb/moviedb_response.dart';
import 'package:cinemapedia_flutter/infrastructure/mappaers/movie_mapper.dart';
import 'package:dio/dio.dart';
import 'package:cinemapedia_flutter/config/constants/enviroment.dart';
import 'package:cinemapedia_flutter/domain/entitites/movie.dart';

import '../../domain/datasources/datasource/movies_datasource.dart';

class MoviedbDatasource extends MovieDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3/', queryParameters: {
    'api_key': Enviroment.theMovieDbKey,
    'language': 'es-MX',
  }));

  List<Movie> _jsonMovies(Map<String, dynamic> json) {

    final movieDBResponse = MovieDBResponse.fromJson(json);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.movieDBToEntitiy(moviedb))
        .toList();

    return movies;
  }

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response =
        await dio.get('/movie/now_playing', queryParameters: {'page': page});
 return _jsonMovies(response.data);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
    final response =
        await dio.get('/movie/popular', queryParameters: {'page': page});

    return _jsonMovies(response.data);
  }
  
  @override
  Future<List<Movie>> getTopRated({int page = 1}) async {
    final response = await dio.get('/movie/top_rated', queryParameters: {'page': page});

    return _jsonMovies(response.data);
  }
  
  @override
  Future<List<Movie>> getUpcoming({int page = 1}) async {
    final response = await dio.get('/movie/upcoming', queryParameters: {'page': page});

    return _jsonMovies(response.data);
  }
}
