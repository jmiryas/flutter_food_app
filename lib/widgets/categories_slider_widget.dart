import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/data.dart';
import '../models/caregory_model.dart';
import '../controllers/category_controller.dart';

class CategoriesSliderWidget extends StatelessWidget {
  const CategoriesSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());

    return SliverToBoxAdapter(
      child: Container(
          height: 50.0,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                CategoryModel categoryModel = categoryList[index];

                return GestureDetector(
                  onTap: () {
                    categoryController.currentIndex.value = index;
                  },
                  child: Obx(() => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: categoryController.getColor(index),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: Row(
                            children: [
                              Card(
                                shadowColor: Colors.black26,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15.0,
                                  child: CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage(categoryModel.image)),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                categoryModel.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        margin: const EdgeInsets.only(right: 10.0),
                      )),
                );
              })),
    );
  }
}
