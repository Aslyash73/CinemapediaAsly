import 'package:cinemapedia_flutter/domain/entitites/actor.dart';
import 'package:cinemapedia_flutter/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
  id: cast.id,
  name: cast.name, 
  profilePath: cast.profilePath != null
  ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}' 
  : 'https://static8.depositphotos.com/1009634/988/v/450/depositphotos_9883921-stock-illustration-no-user-profile-picture.jpg',
  character: cast.character

  );
}
