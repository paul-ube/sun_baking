import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';
import 'package:sun_baking/ui/widgets/ingredients_tile.dart';
import 'package:sun_baking/ui/widgets/recipe_header.dart';

class RecipeDetails extends StatefulWidget {
  final String recipeTitle;

  const RecipeDetails({Key key, this.recipeTitle}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _yieldCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipeTitle, style: titleStyle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        shrinkWrap: false,
        children: <Widget>[
          const SizedBox(
            height: 22,
          ),
          RecipeHeader(
            title: 'Yield',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      color: Colors.pink[50],
                      width: 72,
                      height: 72,
                      child: IconButton(
                        iconSize: 24,
                        icon: Icon(
                          Icons.remove,
                        ),
                        onPressed: () {
                          if (_yieldCount > 1)
                            setState(() {
                              _yieldCount = _yieldCount - 1;
                            });
                        },
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width * 0.25,
                    ),
                    child: Center(
                      child: Text(
                        _yieldCount.toString(),
                        style: titleStyle.copyWith(
                          fontSize: 56,
                        ),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      color: Colors.pink[50],
                      width: 72,
                      height: 72,
                      child: IconButton(
                        iconSize: 24,
                        icon: Icon(
                          Icons.add,
                        ),
                        onPressed: () {
                          setState(() {
                            _yieldCount = _yieldCount + 1;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          RecipeHeader(
            title: 'Ingredients',
          ),
          const SizedBox(
            height: 22,
          ),
          ListView.builder(
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              bool val;
              index % 2 == 0 ? val = false : val = true;
              String type;
              index % 3 == 0
                  ? type = 'cups'
                  : index % 2 == 0 ? type = 'tablespoon' : type = 'teaspoon';
              var rng = Random();
              return IngredientsTile(
                size: rng.nextInt(10),
                ingredientName: 'Flour',
                measurement: type,
                dark: val,
              );
            },
            itemCount: 7,
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}
