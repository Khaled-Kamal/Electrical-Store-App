import 'package:flutter/material.dart';
import 'package:store/Widget/home/home_body.dart';
import 'package:store/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text('مرحبا بكم بمتجر الالكترونيات'),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            
          },
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
