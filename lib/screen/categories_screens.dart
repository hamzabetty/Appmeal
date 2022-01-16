import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/widget/categories_item.dart';
import '../dummy_data.dart';

class categories_screens extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal..."),
      ),
      body: GridView(
          padding: EdgeInsets.all(25),
          children: DUMMY_CATEGORIES
              .map(
                (catData) =>
                    categories_item(catData.id, catData.title, catData.color),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )),
    );
  }
}
