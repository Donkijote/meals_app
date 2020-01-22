import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../data/dummy-data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  /*final String categoryId;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryId, this.categoryTitle);*/

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = args['title'];
    final id = args['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final cat = categoryMeals[index];
          return MealItem(
            title: cat.title,
            complexity: cat.complexity,
            affordability: cat.affordability,
            imageUrl: cat.imageUrl,
            duration: cat.duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
