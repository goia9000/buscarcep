import 'package:buscarcep/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Buscar CEP",
      theme: ThemeData(
        primaryColor: const Color(0xFF00416b),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF00416b),
          secondary: Color(0xFFf5ab0c),
          ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF00416b),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home:const HomePage()
    ),
  );
}

