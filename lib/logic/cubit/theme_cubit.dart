import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panucci_movies/themes/my_themes.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit(): super(MyThemes.getTheme("default"));

  void changeTheme(String? genre) {
    if(genre != null) {
      emit(MyThemes.getTheme(genre));
    } else {
      emit(MyThemes.getTheme("default"));
    }
  }

}
