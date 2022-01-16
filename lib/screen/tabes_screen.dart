import 'package:flutter/material.dart';
import 'package:mealapp/screen/categories_screens.dart';
import 'package:mealapp/screen/categorymeal-screen.dart';
import 'favorites_screen.dart';

class tabeScreen extends StatefulWidget {
  @override
  _tabeScreenState createState() => _tabeScreenState();
}

class _tabeScreenState extends State<tabeScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'titel': 'Categories',
      'page': categories_screens(),
    },
    {
      'titel': 'Favorites',
      "page": favoritesScreen(),
    }
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]["title"]),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("Categories")),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text("Favorites")),
        ],
      ),
    );
  }
}
