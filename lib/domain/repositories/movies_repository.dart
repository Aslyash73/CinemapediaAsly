import 'package:cinemapedia_flutter/domain/entitites/movie.dart';

abstract class MovieReository {
  Future<List> getNowPlaying({int page = 1});
}
