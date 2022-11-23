import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import '../utilities/const_data.dart';
import '../utilities/custom_google_font.dart';

class CustomListTokens extends StatelessWidget {
  final String? tokenImage, tokenTitle, tokenSubTitle, rationSign;
  final Color ratioColor;
  final double price, ratio;
  final List<double> tokenLineCurveData;
  final bool isLost;

  const CustomListTokens(
      {super.key,
      this.tokenImage,
      required this.tokenTitle,
      required this.tokenSubTitle,
      required this.tokenLineCurveData,
      required this.price,
      required this.ratio,
      required this.rationSign,
      required this.isLost,
      this.ratioColor = greenColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(tokenImage.toString()),
          ),
          const SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$tokenTitle',
                style:
                    customGoogleFont(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Text(
                '$tokenSubTitle',
                style: customGoogleFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFA0A0A0)),
              ),
            ],
          ),
          const SizedBox(width: 42),
          Expanded(
              child: SizedBox(
            width: 100,
            height: 27,
            child: Sparkline(
              lineWidth: 3,
              useCubicSmoothing: true,
              data: tokenLineCurveData,
              lineColor: isLost == true ? redColor : greenColor,
            ),
          )
              // Image.asset(
              //   lineCurveImagePath!,
              // ),
              ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$ $price',
                style:
                    customGoogleFont(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                '$rationSign $ratio %',
                style: customGoogleFont(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: isLost == true ? redColor : greenColor,
                ),
              )
            ],
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
