import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  //creo una variable con los colores que quiero usar
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color Primario
        primaryColor: primary,
        appBarTheme: AppBarTheme(
          color: primary,
          elevation: 20,
          foregroundColor: Colors.white, //flecha y letras del appBar blanco
        ),
        listTileTheme: ListTileThemeData(
          iconColor: primary, //pongo los iconos de las listas orange
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 5,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: primary,
            shape: CircleBorder(), //forma redondeada
            fixedSize: Size(300, 300), //mas grande para que el circulo no se corte
          )

        )
  );
}