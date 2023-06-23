import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MoviedbDataSourceImpl extends MoviesDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
      queryParameters: {
        'api_key': Environment.movieDBkey,
        'Language': 'es-MX'
      }));

  @override
  Future<List<Movie>> getnowPlaying({int page = 1}) async {
    final response = await dio.get('movie/now_playing');
    final List<Movie> movies = [];

    return movies;
  }
}
