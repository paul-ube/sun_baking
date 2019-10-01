import 'package:flutter/material.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';

class RecipeItem extends StatelessWidget {
  final String title;
  final String cookingTime;
  final String label;
  final Function onTap;

  const RecipeItem({
    Key key,
    this.title,
    this.cookingTime,
    this.label,
    this.onTap,
  }) : super(key: key);

  BoxDecoration get itemDecoration => BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: const Offset(0, 10),
              blurRadius: 7,
              spreadRadius: 0),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
      child: Container(
          decoration: itemDecoration,
          child: Material(
            type: MaterialType.transparency,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              //todo
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.9,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            title,
                            style: header,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red.shade400,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              size: 16,
                              color: Colors.black54,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '$cookingTime mins',
                                style: body1.apply(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        label == null
                            ? SizedBox.shrink()
                            : Container(
                                child: Text(
                                  label,
                                ),
                              ),
//                        Row(
//                          mainAxisSize: MainAxisSize.min,
//                          children: <Widget>[
//                            Icon(
//                              Icons.calendar_today,
//                              size: 16,
//                              color: Colors.black54,
//                            ),
//                            Text(
//                              'edited on July 1, 2019',
//                              style: body1.apply(
//                                color: Colors.black54,
//                              ),
//                            ),
//                          ],
//                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
