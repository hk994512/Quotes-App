import 'package:flutter/material.dart';

var theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigoAccent,
    ).copyWith(
        onBackground: Colors.greenAccent,
        onPrimary: Colors.blueAccent,
        onError: Colors.redAccent),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 123, 255, 156),
    ));
