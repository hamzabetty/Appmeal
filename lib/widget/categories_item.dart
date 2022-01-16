import 'package:flutter/material.dart';
import 'package:mealapp/screen/categorymeal-screen.dart';

class categories_item extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  void categorymeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(categorymealscreen.routName, arguments: {
      'id': id,
      'title': title,
    });
  }

  const categories_item(this.id, this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => categorymeal(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
