
import 'dart:ui';

import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*scrollBehavior: const MaterialScrollBehavior().copyWith( //para poder desplazar pinchando con el raton en windows
        dragDevices: {
          PointerDeviceKind.mouse,
        }
      ),*/
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      //initialRoute: 'home',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(), //routes\app_routes.dart
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}