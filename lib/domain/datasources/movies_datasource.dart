import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDatasource {

 Future<List<Movie>>  getnowPlaying({int page = 1});
 
}
