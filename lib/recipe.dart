import 'package:flutter/material.dart';

class Recipe {
   final int servings;
   final List<Ingredient>ingredients;
 final String label;
   final String imageUrl;


  Recipe(
    this.label,
    this.imageUrl,
      this.servings,
      this.ingredients,
  );

  static List <Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/image-01.jpg',4,
  [
  Ingredient(1, 'box', 'Spaghetti',),
  Ingredient(4, '', 'Frozen Meatballs',),
  Ingredient(0.5, 'jar', 'sauce',),
    ]),
    Recipe(
      'Tomato Soup',
      'assets/image-02.jpg',6,

  [
  Ingredient(1, 'can', 'Tomato Soup',),
  ] ),
  Recipe(
      'Grilled Cheese',
      'assets/image-03.jpg',3,
      [Ingredient(2, 'slices', 'Cheese',),
        Ingredient(2, 'slices', 'Bread',)
]),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/image-04.jpg',5,
      [
        Ingredient(4, 'cups', 'flour',),
        Ingredient(2, 'cups', 'sugar',),
        Ingredient(0.5, 'cups', 'chocolate chips',),
      ]

    ),
    Recipe(
      'Taco Salad',
      'assets/image-05.jpg',3,
      [
        Ingredient(4, 'oz', 'nachos'),
        Ingredient(3, 'oz', 'taco meat'),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ]
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/image-06.jpg',4,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ]
    ),

  ];
}
class Ingredient {
 final  double quantity;
  final  String unit;
   final String name;
  Ingredient(
      this.quantity,
      this.unit,
      this.name,
      );

}