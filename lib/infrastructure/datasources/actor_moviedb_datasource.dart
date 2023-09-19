import 'package:dio/dio.dart';
import 'package:cinemapedia_flutter/domain/entitites/actor.dart';
import 'package:cinemapedia_flutter/domain/datasources/datasource/actors_datasources.dart';
import 'package:cinemapedia_flutter/config/constants/enviroment.dart';
import 'package:cinemapedia_flutter/infrastructure/mappaers/actor_mapper.dart';
import 'package:cinemapedia_flutter/infrastructure/models/moviedb/credits_response.dart';

class ActorMovieDbDatasource extends ActorDatasource {
//service
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3/', queryParameters: {
    'api_key': Enviroment.theMovieDbKey,
    'language': 'es-MX',
    }
  )
);

  @override
  Future<List<Actor>> getActorByMovie(String movieId) async {

    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data);

    List<Actor> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

     return actors;
  }
}
