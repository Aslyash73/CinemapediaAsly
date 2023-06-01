import 'package:cinemapedia_flutter/domain/entitites/movie.dart';

abstract class MovieDatasource {
  Future<List> getNowPlaying({int page = 1});
}
