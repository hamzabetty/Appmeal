import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';

class mealDetailScreen extends StatelessWidget {
  const mealDetailScreen({Key? key}) : super(key: key);
  static const routName = 'meal_detail';
  Widget builderSectionTitel(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 100,
      width: 200,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selctedMeal = DUMMY_MealS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selctedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                selctedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            builderSectionTitel(context, "Ingradients"),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Text(selctedMeal.ingredients[index]),
                ),
                itemCount: selctedMeal.ingredients.length,
              ),
            ),
            builderSectionTitel(context, "Steps"),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("# ${index + 1}"),
                      ),
                      title: Text(selctedMeal.steps[index]),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selctedMeal.steps.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
