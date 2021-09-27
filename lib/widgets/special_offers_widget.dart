import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../data/data.dart';
import '../models/food_model.dart';
import '../screens/food_details_screen.dart';

class SpecialOffersWidget extends StatelessWidget {
  const SpecialOffersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverStaggeredGrid.extentBuilder(
        maxCrossAxisExtent: 300.0,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        staggeredTileBuilder: (index) => const StaggeredTile.extent(1, 300),
        itemBuilder: (context, index) {
          FoodModel foodModel = foodList[index];
          final moneyFormat = NumberFormat("#,##0.00", "id_ID");

          return GestureDetector(
            onTap: () {
              Get.to(const FoodDetailsScreen(), arguments: foodModel);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                        tag: foodModel.image,
                        child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(foodModel.image)),
                                borderRadius: BorderRadius.circular(100.0)))),
                    Text(
                      foodModel.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Rp ${moneyFormat.format(foodModel.price)}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20.0,
                      child: IconButton(
                          color: Colors.black,
                          onPressed: () {},
                          icon: const Icon(Icons.add)),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: foodList.length);
  }
}
