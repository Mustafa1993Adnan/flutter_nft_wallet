import 'package:flutter/material.dart';

import '../utilities/const_data.dart';
import '../utilities/custom_google_font.dart';

class HomeButton extends StatelessWidget {
  final String buttonTitle;
  final List<Color> buttonColors;
  final String buttonImage;
  const HomeButton(
      {super.key,
      required this.buttonTitle,
      this.buttonColors = const [buttonGreyColor, buttonGreyColor],
      required this.buttonImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 120,
      child: IconButton(
        color: buttonGreyColor,
        onPressed: () {},
        icon: Column(
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: buttonColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  buttonImage,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              buttonTitle,
              style:
                  customGoogleFont(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        splashRadius: 80,
        iconSize: 200,
      ),
    );
  }
}
