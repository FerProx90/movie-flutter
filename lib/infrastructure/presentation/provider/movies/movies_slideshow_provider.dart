import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/presentation/provider/movies/movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesSlishowProvider = Provider<List<Movie>>((ref) {
  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.isEmpty){
    return [];  
    }
    return nowPlayingMovies.sublist(0,6);
});