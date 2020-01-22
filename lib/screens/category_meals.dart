import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Some tile'),
      ),
      body: Center(
        child: Text(
          'The Recipes for the Category!',
        ),
      ),
    );
  }
}
