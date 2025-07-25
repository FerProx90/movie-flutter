import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieMovieDB movieDB) => Movie(
    adult: movieDB.adult,
    backdropPath: movieDB.backdropPath != ''
        ? 'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
        : 'https://m.media-amazon.com/images/I/61s8vyZLSzL._AC_SY879_.jpg',
    genreIds: movieDB.genreIds.map((e) => e.toString()).toList(),
    id: movieDB.id,
    originalLanguage: movieDB.originalLanguage,
    originalTitle: movieDB.originalTitle,
    overview: movieDB.overview,
    popularity: movieDB.popularity,
    posterPath: movieDB.posterPath != ''
        ? 'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
        : 'no-poster',
    releaseDate: movieDB.releaseDate,
    title: movieDB.title,
    video: movieDB.video,
    voteAverage: movieDB.voteAverage,
    voteCount: movieDB.voteCount,
  );
}
