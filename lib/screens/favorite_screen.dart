import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text(
          'Não há refeições marcadas como favoritas.',
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
