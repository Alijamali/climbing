import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["img/welcome_one.png", "img/welcome_two.jpg", "img/welcome_three.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(images[index]),
              fit: BoxFit.cover),
            ),
            child: Container(

              child: Text('ali'),
            ),

          );
        },
      ),
    );
  }
}
