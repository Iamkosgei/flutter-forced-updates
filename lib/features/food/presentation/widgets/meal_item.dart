import 'package:flutter/material.dart';
import 'package:forced_updates_demo/features/food/domain/entities/meal/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              meal.image ??
                  'https://www.themealdb.com/images/media/meals/atd5sh1583188467.jpg',
              fit: BoxFit.cover,
              height: 90,
            ),
          )),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Text(
              meal.name ?? '',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
