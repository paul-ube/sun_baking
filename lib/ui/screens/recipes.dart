import 'package:flutter/material.dart';
import 'package:sun_baking/ui/shared/route_paths.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';
import 'package:sun_baking/ui/widgets/recipe_item.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

const List<String> sampleData = <String>[
  'Red Velvet',
  'Blueberry Cheesecake',
  'Chocolate Cake',
  'New York Cheesecake',
  'Lemon Coconut Slice',
  'Melting Moments',
  'Banana and blueberry cake',
  'Pecan pie slice',
  'Apple and vanilla tea cake',
  'Thousand-layer apple tart',
  'Chocolate-dipped cookies',
];

class _RecipeScreenState extends State<RecipeScreen> {
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
            onTap: () => Navigator.pushNamed(
              context,
              RoutePaths.RecipeDetails,
              arguments: sampleData[index],
            ),
          );
        },
        itemCount: sampleData.length,
      ),
    );
  }
}
