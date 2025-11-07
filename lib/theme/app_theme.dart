import 'package:flutter/material.dart';

class AppTheme {
  //creo una variable con los colores que quiero usar
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color Primario
        primaryColor: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          color: Colors.deepOrange,
          elevation: 20,
          foregroundColor: Colors.white, //flecha y letras del appBar blanco
        ),
        listTileTheme: ListTileThemeData(
          iconColor: Colors.deepOrange, //pongo los iconos de las listas orange
        )
  );
}