import 'package:cinemapedia_flutter/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_flutter/infrastructure/repositories/movie_repository_implementation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Este repositorio es inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
