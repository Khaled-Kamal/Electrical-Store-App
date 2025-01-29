import 'package:flutter/material.dart';
import 'package:store/Models/Products.dart';
import 'package:store/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
    required this.press
  });

  final int itemIndex;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 190,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: 200,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Image.asset(product.image),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        product.title,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        product.subTitle,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0 * 1.5,
                          vertical: 20.0 / 5,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('السعر: \$${product.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
