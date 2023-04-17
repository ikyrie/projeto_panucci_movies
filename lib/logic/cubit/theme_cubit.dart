import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panucci_movies/themes/my_themes.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit(): super(myTheme);

  void changeTheme(String? genre) {
    switch (genre) {
      case "Suspense":
        emit(themeSuspense);
        break;

      case "Terror":
        emit(themeTerror);
        break;

      case "Comédia":
        emit(themeComedia);
        break;

      case "Drama":
        emit(themeDrama);
        break;

      default:
        emit(myTheme);
        break;
    }
  }

}
