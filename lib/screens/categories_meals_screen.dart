import 'package:flutter/material.dart';

class CategoiresMealsScreen extends StatelessWidget {
  const CategoiresMealsScreen({super.key});

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
