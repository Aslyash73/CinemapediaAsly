import 'package:cinemapedia_flutter/domain/datasources/datasource/actors_datasources.dart';
import 'package:cinemapedia_flutter/domain/entitites/actor.dart';
import 'package:cinemapedia_flutter/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository 
{
  final ActorDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorByMovie(String movieId) {
    return datasource.getActorByMovie(movieId);
  }
}
