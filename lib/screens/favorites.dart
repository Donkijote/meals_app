import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You\'ve got not favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (_, index) {
          final cat = favoriteMeals[index];
          return MealItem(
            id: cat.id,
            title: cat.title,
            complexity: cat.complexity,
            affordability: cat.affordability,
            imageUrl: cat.imageUrl,
            duration: cat.duration,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
