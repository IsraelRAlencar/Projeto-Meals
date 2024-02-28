import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [
          category.color.withOpacity(0.7),
          category.color,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Text(category.title),
    );
  }
}
