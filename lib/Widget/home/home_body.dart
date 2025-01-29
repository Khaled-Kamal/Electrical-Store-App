import 'package:flutter/material.dart';
import 'package:store/Models/Products.dart';
import 'package:store/Screens/details_Screen.dart';
import 'package:store/Widget/details/details_body.dart';
import 'package:store/Widget/product_card.dart';
import 'package:store/constants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
