import 'package:flutter/material.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';
import 'package:sun_baking/ui/widgets/recipe_item.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

const List<String> sampleData = <String>[
  'Red Velvet',
  'Blueberry Cheesecake',
  'Chocolate Cake',
  'New York Cheesecake',
  'Lemon Coconut Slice',
  'Melting Moments',
];

const List<String> sampleLabel = <String>[
  'cupcake',
  'cake',
  'cake',
  'cake',
  'pastry',
  'cookie',
];

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Recipes',
          style: titleStyle,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return RecipeItem(
            title: sampleData[index],
            cookingTime: index.toString(),
            label: sampleLabel[index],
          );
        },
        itemCount: sampleData.length,
      ),
    );
  }
}
