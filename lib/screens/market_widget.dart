import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nft_wallet/utilities/custom_google_font.dart';
import 'package:flutter_nft_wallet/widgets/market_items_widget.dart';

import '../data/data.dart';
import '../utilities/const_data.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    iconSize: 38,
                    splashColor: Colors.white,
                    splashRadius: 25,
                    highlightColor: Colors.white,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: const Icon(Icons.notifications_rounded,
                        color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 12,
                  child: Container(
                    width: 21,
                    height: 21,
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF002E),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 15,
                      minHeight: 15,
                    ),
                    child: const Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        title: Text(
          "Market",
          style: customGoogleFont(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          //Category List

          SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 22)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(greenColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: index == 0
                                    ? const BorderSide(color: greenColor)
                                    : const BorderSide(
                                        color: Color(0xFF2F2F34)),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF2F2F34))),
                        onPressed: () => null,
                        child: Text(btnCatList[index].toString(),
                            style: customGoogleFont(
                                fontSize: 12, fontWeight: FontWeight.w600)));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: btnCatList.length),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          //Market Items
          // Container(
          //   width: 156,
          //   height: 224,
          //   decoration: const BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(25)),
          //     color: Color(0xFF2A3547),
          //   ),
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         width: 156,
          //         height: 159,
          //         child: Stack(
          //           children: [
          //             Image.asset(
          //               'assets/images/1.png',
          //               fit: BoxFit.cover,
          //               width: 180,
          //             ),
          //             Positioned(
          //               right: 9,
          //               top: 6,
          //               child: Container(
          //                 height: 20,
          //                 width: 30,
          //                 decoration: BoxDecoration(
          //                   color: Colors.transparent.withOpacity(0.2),
          //                   borderRadius: BorderRadius.circular(30),
          //                 ),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     const Icon(
          //                       Icons.favorite_border_outlined,
          //                       size: 12,
          //                     ),
          //                     SizedBox(width: 2),
          //                     Text(
          //                       '2',
          //                       style: customGoogleFont(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.w600,
          //                           color: const Color(0xFF161616)),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Text(
          //                   "Super Influencers",
          //                   style: customGoogleFont(
          //                       fontSize: 12, fontWeight: FontWeight.w600),
          //                 )
          //               ],
          //             ),
          //             const SizedBox(
          //               height: 6,
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   "#1267",
          //                   style: customGoogleFont(
          //                       fontSize: 14, fontWeight: FontWeight.w600),
          //                 ),
          //                 SizedBox(
          //                   height: 20,
          //                   width: 40,
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       Image.asset(
          //                         'assets/images/ethereumLogo.png',
          //                         width: 10,
          //                         height: 10,
          //                       ),
          //                       SizedBox(width: 2),
          //                       Text(
          //                         '6.64',
          //                         style: customGoogleFont(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          Expanded(
            flex: 2,
            child: MarketItem(
              marketItemsData: marketMapItemsData,
            ),
          )
          //Market Items
        ],
      ),
    );
  }
}
