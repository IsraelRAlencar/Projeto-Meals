// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoiresMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por categoria ${category.id}',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            )),
      ),
    );
  }
}
