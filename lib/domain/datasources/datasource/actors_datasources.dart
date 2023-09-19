import 'package:cinemapedia_flutter/domain/entitites/actor.dart';

abstract class ActorDatasource {

  Future<List<Actor>> getActorByMovie(String movieId);
}
