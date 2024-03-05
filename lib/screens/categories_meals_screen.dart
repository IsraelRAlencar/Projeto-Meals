// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../models/category.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoiresMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CategoiresMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: ((ctx, index) {
          return MealItem(
            categoryMeals[index],
          );
        }),
      ),
    );
  }
}
