import 'package:cinemapedia_flutter/domain/datasources/datasource/movies_datasource.dart';
import 'package:cinemapedia_flutter/domain/repositories/movies_repository.dart';

import '../../domain/entitites/movie.dart';

class MovieRepositoryImpl extends MovieReository {
  final MovieDatasource datasource;

  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
