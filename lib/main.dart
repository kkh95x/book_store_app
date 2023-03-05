// ignore_for_file: depend_on_referenced_packages


import 'package:book_store/src/core/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      localizationsDelegates:[
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales:[
    Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
  home: HomePage(),
    );
  }
}
