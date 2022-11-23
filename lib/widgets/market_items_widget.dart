import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/custom_google_font.dart';

class MarketItem extends StatelessWidget {
  // final String? marketImagePath;

  final List<Map<String, dynamic>> marketItemsData;

  const MarketItem({
    super.key,
    required this.marketItemsData,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 30,
      childAspectRatio: (0.89),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      children: List.generate(marketItemsData.length, (index) {
        return Container(
          width: 156,
          height: 224,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            // color: Color(0xFF2A3547),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 156,
                height: 159,
                child: Stack(
                  children: [
                    Image.asset(
                      marketItemsData[index]['imagePath'],
                      fit: BoxFit.fill,
                      width: 200,
                    ),
                    Positioned(
                      right: 9,
                      top: 6,
                      child: Container(
                        height: 20,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.favorite_border_outlined,
                              size: 12,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              marketItemsData[index]['likeCount'].toString(),
                              style: customGoogleFont(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF161616)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          marketItemsData[index]['marketTitle'],
                          style: customGoogleFont(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          marketItemsData[index]['hashCode'],
                          style: customGoogleFont(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                          width: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ethereumLogo.png',
                                width: 10,
                                height: 10,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                marketItemsData[index]['price'].toString(),
                                style: customGoogleFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
