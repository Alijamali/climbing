import 'package:climbing/misc/colors.dart';
import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatelessWidget {
  double withe;

  bool withText;

  ResponsiveButton({super.key, required this.withe, this.withText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: withe,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Image.asset("img/arrow.png" ,fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
