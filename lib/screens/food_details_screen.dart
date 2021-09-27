import 'package:flutter/material.dart';
import 'package:food_app/widgets/food_details_header_widget.dart';
import 'package:get/get.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var foodModel = Get.arguments;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const FoodDetailsHeaderWidget(),
          SliverToBoxAdapter(
            child: Hero(
                tag: foodModel.image,
                child: Container(
                  height: 250.0,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                        fit: BoxFit.cover, image: AssetImage(foodModel.image)),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30.0)),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Size",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0),
                  ),
                  Text(
                    "Qty",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.grey.shade300,
                          child: const Text(
                            "S",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.grey.shade300,
                          child: const Text(
                            "M",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.amber,
                          child: Text(
                            "L",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Center(
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Center(
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 16.0, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Rp 50.000,00",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 15.0),
                            primary: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        onPressed: () {},
                        child: const Text(
                          "Order Now",
                          style: TextStyle(color: Colors.black),
                        ))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
