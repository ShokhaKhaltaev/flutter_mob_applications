import 'ingridients.dart';

class Recipes{
  List<Ingredients> ingredients;
  int servings;
  String label;
  String imageUrl;
  Recipes(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipes> recipes = [
    Recipes('Spagetti and MeatBalls', 'https://images.unsplash.com/photo-1598511726623-d2e9996892f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    4,
    [
        Ingredients(1, 'box', 'Spagetti'),
        Ingredients(4, '', 'Frozen Meatbells'),
        Ingredients(0.5, 'jar', 'sauce')
    ]),
    Recipes('Tomato Soup', 'https://images.unsplash.com/photo-1548943487-a2e4e43b4853?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    2,
    [
      Ingredients(1, 'can', 'Tomato Soup')
    ]
    ),
    Recipes('Grilled Cheese', 'https://images.unsplash.com/photo-1528736235302-52922df5c122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1122&q=80',
    1,
    [
      Ingredients(2, 'slices', 'Cheese'),
      Ingredients(2, 'slices', 'Bread')
    ]),
    Recipes('Chocolate Chip cookies', 'https://images.unsplash.com/photo-1584847801423-852691e41bc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80',
    24,
    [
      Ingredients(4, 'cups', 'flour'),
      Ingredients(2, 'cups', 'sugar'),
      Ingredients(0.5, 'cups', 'chocolate chips')
    ]),
    Recipes('Taco Salad', 'https://images.unsplash.com/photo-1594500449280-cd9ab7cb33db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=973&q=80',
    1,
    [
      Ingredients(4, 'oz', 'nachos'),
      Ingredients(3, 'cup', 'cheese')
    ]),
    Recipes('Hawaiian Pizza', 'https://images.unsplash.com/photo-1590534247854-e97d5e3feef6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    4,
    [
      Ingredients(1, 'item', 'pizza'),
      Ingredients(1, 'cup', 'pineapple')
    ])
  ];
}

