import 'package:flutter/material.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';

class IngredientsTile extends StatelessWidget {
  final int size;
  final String ingredientName;
  final String measurement;
  final bool dark;

  const IngredientsTile(
      {Key key,
      this.size,
      this.ingredientName,
      this.measurement,
      this.dark = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark == false ? Colors.pink[50] : Colors.white,
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        title: Row(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.3,
                  maxWidth: MediaQuery.of(context).size.width * 0.3),
              child: Row(
                children: <Widget>[
                  Text(
                    '$size ',
                    style: body2,
                  ),
                  Container(
                    child: Text(
                      measurement,
                      style: body2,
                    ),
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.2),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.5,
              ),
              child: Text(
                ingredientName,
                style: body2.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
