import 'package:climbing/widgets/app_custom_text.dart';
import 'package:climbing/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["img/welcome_one.png", "img/welcome_two.jpg", "img/welcome_three.jpg"];
  List slideTexts1 = ["Trips", "", ""];
  List slideTexts2 = ["Mountain", "", ""];
  List slideTexts3 = ["This is main text about mountain and mounting.this is main text about mountain and mounting ", "", ""];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            alignment: Alignment.topLeft,
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: height * .05, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppCustomText(text: slideTexts1[index], textSize: 32, fontWeight: FontWeight.w900, textColor: AppColors.bigTextColor),
                      AppCustomText(text: slideTexts2[index], textSize: 24, fontWeight: FontWeight.w100, textColor: AppColors.mainColor),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: (width /3 + width / 3),
                        child: AppCustomText(text: slideTexts3[index], textSize: 18, fontWeight: FontWeight.w100, textColor: AppColors.textColor2),
                      ),
                      const SizedBox(height: 35),
                      index == 0 ? ResponsiveButton(withe: 90) : Container() ,
                    ],
                  ),
                  Column(
                    children: List.generate(images.length, (indexSlider) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height:index == indexSlider ? 25 : 8,
                        decoration: BoxDecoration(
                          color: index == indexSlider ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8)
                        ),

                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
