import 'package:cinemapedia_flutter/domain/entitites/actor.dart';

abstract class ActorsRepository {

  Future<List<Actor>> getActorByMovie(String movieId);
}
