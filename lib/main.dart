import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

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
      routes: {
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoiresMealsScreen(),
      },
    );
  }
}
