import 'package:flutter/material.dart';
import 'package:forced_updates_demo/features/food/presentation/widgets/meals_loading_item.dart';

class ListItemShimmer extends StatelessWidget {
  const ListItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: MealsLoadingItem(height: 90),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MealsLoadingItem(height: 15),
                  const SizedBox(height: 20),
                  MealsLoadingItem(
                    height: 15,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
