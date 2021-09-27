import 'package:flutter/material.dart';

import '../widgets/special_offers_widget.dart';
import '../widgets/categories_slider_widget.dart';
import '../widgets/header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Icon(Icons.shopping_cart_sharp, color: Colors.black)),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const HeaderWidget(),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: const Text(
                "Categories",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2),
              ),
            ),
          ),
          const CategoriesSliderWidget(),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: const Text(
                "Special Offers",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(20.0),
            sliver: SpecialOffersWidget(),
          )
        ],
      ),
    );
  }
}
