import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodDetailsHeaderWidget extends StatelessWidget {
  const FoodDetailsHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var foodModel = Get.arguments;

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  foodModel.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                )),
                const Icon(Icons.favorite_outline)
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.local_fire_department,
                    color: Colors.orange.shade900),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "300 calories",
                  style: TextStyle(fontSize: 18.0, color: Colors.grey.shade500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
