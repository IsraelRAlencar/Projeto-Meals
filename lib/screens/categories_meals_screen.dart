import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoiresMealsScreen extends StatelessWidget {
  final Category category;

  const CategoiresMealsScreen(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('As Receitas'),
      ),
      body: const Center(
        child: Text('Receitas por categoria'),
      ),
    );
  }
}
