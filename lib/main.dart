import 'package:flutter/material.dart';
import 'package:mealapp/screen/tabes_screen.dart';
import './screen/categories_screens.dart';
import './screen/categorymeal-screen.dart';
import './screen/meal-detail-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
          canvasColor: Colors.white70,
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Colors.black,
                ),
                body2: TextStyle(
                  color: Colors.black,
                ),
                title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              )),

      //   home: MyHomePage(title: 'Meal App'),
      routes: {
        '/': (context) => categories_screens(),
        categorymealscreen.routName: (context) => categorymealscreen(),
        mealDetailScreen.routName: (context) => mealDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: null,
    );
  }
}
