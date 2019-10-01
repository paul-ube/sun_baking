import 'package:flutter/material.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';

class RecipeHeader extends StatelessWidget {
  final String title;

  const RecipeHeader({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.pink[50].withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 8,
        ),
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
    );
  }
}
