import 'package:flutter/material.dart';
import 'package:sun_baking/ui/screens/favorites.dart';
import 'package:sun_baking/ui/screens/recipes.dart';
import 'package:sun_baking/ui/shared/text_styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedLabelStyle: body1,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              title: Text('Recipes'),
              activeIcon: Icon(Icons.bookmark),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Favorites'),
              activeIcon: Icon(Icons.favorite),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          onPressed: () {},
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.add),
        ),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _currentIndex,
            children: <Widget>[
              RecipeScreen(),
              FavoriteScreen(),
            ],
          ),
        ));
  }
}
