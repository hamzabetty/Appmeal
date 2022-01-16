import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/model/meal.dart';
import 'package:mealapp/widget/meal-Item.dart';

class categorymealscreen extends StatefulWidget {
  static const routName = 'category_meals';
  const categorymealscreen({Key? key}) : super(key: key);

  @override
  _categorymealscreenState createState() => _categorymealscreenState();
}

class _categorymealscreenState extends State<categorymealscreen> {
  @override
  Widget build(BuildContext context) {
    final routrArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryID = routrArg['id'];
    final categoryTitle = routrArg['title'];
    final categorymeal = DUMMY_MealS.where((Meal) {
      return Meal.categories.contains(categoryID);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return mealItem(
              id: categorymeal[index].id,
              imageUrl: categorymeal[index].imageUrl,
              title: categorymeal[index].title,
              duration: categorymeal[index].duration,
              complexity: categorymeal[index].complexity,
              affordability: categorymeal[index].affordability,
            );
          },
          itemCount: categorymeal.length,
        ));
  }
}
