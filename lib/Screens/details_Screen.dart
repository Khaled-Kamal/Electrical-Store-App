import 'package:flutter/material.dart';
import 'package:store/Models/Products.dart';
import 'package:store/Widget/details/details_body.dart';
import 'package:store/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required Product product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAPPbar(context),
      body: DetailsBody(),
    );
  }

  AppBar DetailsAPPbar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
      ),
      title: Text(
        'رجوع',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
