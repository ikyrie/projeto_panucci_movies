import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/movie.dart';
import '../../../services/movies_api.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final homeService = HomeService();

  /// Descrição: Função para buscar filmes e retornar se houve sucesso (estado de HomeSucess) ou falha (estado de HomeError).
  Future<void> getMovies() async {
    emit(HomeLoading());
    try {
      final movies = await homeService.fetchMovies();
      emit(HomeSuccess(movies));
    } catch (e) {
      emit(HomeError('Erro ao carregar filmes em cartaz'));
    }
  }

  /// Descrição: Função para buscar filmes com base na catergoria e retornar se houve sucesso (estado de HomeSucess) ou falha (estado de HomeError).
  Future<void> getMoviesByGenre(String genre) async {
    emit(HomeLoading());
    try {
      final movies = await homeService.fetchMoviesByGenre(genre);
      emit(HomeSuccess(movies));
    } catch (e) {
      emit(HomeError('Erro ao carregar filmes deste gênero'));
    }
  }
}
