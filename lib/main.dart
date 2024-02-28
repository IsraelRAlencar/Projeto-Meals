import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData theme = ThemeData(
    fontFamily: 'Raleway',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.pink,
            secondary: Colors.amber,
            background: const Color.fromRGBO(255, 254, 229, 1),
          ),
          textTheme: const TextTheme().copyWith(
              titleLarge: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ))),
      home: const CategoriesScreen(),
    );
  }
}
