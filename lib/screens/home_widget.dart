import 'package:flutter/material.dart';
import 'package:flutter_nft_wallet/utilities/custom_google_font.dart';
import 'package:flutter_nft_wallet/widgets/buttons.dart';
import 'package:flutter_nft_wallet/widgets/custom_list_tokens.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../utilities/const_data.dart';
import '../widgets/dropdown_button.dart';
import 'market_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        //current wallet section
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Current Wallet Balance',
                      style: customGoogleFont(
                          letterSpacing: 0.2,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [DropdownButtonWallet()],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 10),
                      width: 161,
                      height: 22,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          color: containerColor),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "BTC : 0,00335",
                            style: customGoogleFont(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const SizedBox(
                            width: 20,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Icon(
                                Icons.arrow_drop_up_outlined,
                                color: greenColor,
                                size: 20,
                              ),
                            ),
                          ),
                          Text(
                            "+6.54%",
                            style: customGoogleFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: greenColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 39,
        ),
        //button section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              // SizedBox(
              //   width: 90,
              //   height: 120,
              //   child: IconButton(
              //     onPressed: () {},
              //     icon: Column(
              //       children: [
              //         Container(
              //           width: 76,
              //           height: 76,
              //           decoration: const BoxDecoration(
              //             shape: BoxShape.circle,
              //             gradient: LinearGradient(
              //               colors: [buttonGreyColor, buttonGreyColor],
              //             ),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(20.0),
              //             child: Image.asset(
              //               'assets/images/money-recive 1.png',
              //             ),
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 8,
              //         ),
              //         Text(
              //           "Send",
              //           style: customGoogleFont(
              //               fontSize: 14, fontWeight: FontWeight.w600),
              //         ),
              //       ],
              //     ),
              //     // icon: Image.asset('assets/images/money-recive 1.png'),
              //     splashRadius: 60,
              //     iconSize: 150,
              //   ),
              // ),
              HomeButton(
                  buttonTitle: 'Send',
                  buttonImage: 'assets/images/money-send 1.png'),
              HomeButton(
                buttonTitle: "Buy",
                buttonImage: 'assets/images/add 1.png',
                buttonColors: [Color(0xFF0061FF), Color(0xFF6100FF)],
              ),
              HomeButton(
                buttonTitle: "Receive",
                buttonImage: 'assets/images/money-recive 1.png',
              )
            ],
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        //toggle switch Tokens and NFTs
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleSwitch(
              customTextStyles: [
                customGoogleFont(fontSize: 14, fontWeight: FontWeight.w600)
              ],
              fontSize: 14,
              minWidth: 300,
              minHeight: 47,
              cornerRadius: 15.0,
              activeBgColors: const [
                [Color(0xFF3B3F58)],
                [Color(0xFF3B3F58)]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: const Color(0xFF212436),
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 2,
              labels: const ['Tokens', 'NFTs'],
              radiusStyle: true,
              onToggle: (index) {
                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MarketScreen()),
                  );
                }
              },
            ), // Container(
            //     alignment: Alignment.center,
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            //     width: 332,
            //     height: 47,
            //     decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(40.0),
            //             bottomRight: Radius.circular(40.0),
            //             topLeft: Radius.circular(40.0),
            //             bottomLeft: Radius.circular(40.0)),
            //         color: Color(0xFF212436)),
            //     child: Container(
            //       alignment: Alignment.center,
            //       padding:
            //           const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            //       width: 166,
            //       height: 39,
            //       decoration: const BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //               topRight: Radius.circular(40.0),
            //               bottomRight: Radius.circular(40.0),
            //               topLeft: Radius.circular(40.0),
            //               bottomLeft: Radius.circular(40.0)),
            //           color: containerColor),
            //       child: Text(
            //         "Tokens",
            //         style: customGoogleFont(
            //             fontSize: 14, fontWeight: FontWeight.w600),
            //       ),
            //     ))
          ],
        ),
        //Tokens price
        const SizedBox(
          height: 44,
        ),
        //Tokens List
        Column(
          children: const [
            CustomListTokens(
              tokenImage: 'assets/images/bitcoin.png',
              tokenTitle: 'BTC',
              tokenSubTitle: 'Bitcoin',
              tokenLineCurveData: [0.0, 1.0, 1.0, 1.8, 2.0, 1.0, 0.5, 0.0],
              price: 36590.00,
              ratio: 6.21,
              rationSign: '+',
              isLost: false,
            ),
            Divider(
              thickness: 2,
              color: Color(0xFF212436),
            ),
            CustomListTokens(
              tokenImage: 'assets/images/ethereum.png',
              tokenTitle: 'ETH',
              tokenSubTitle: 'Ethereum',
              tokenLineCurveData: [0.0, -1.0, -3, 0, -1.8, 0, 0.5, 1.0],
              price: 2590.00,
              ratio: 5.21,
              rationSign: '+',
              isLost: true,
            ),
            Divider(
              thickness: 2,
              color: Color(0xFF212436),
            ),
            CustomListTokens(
              tokenImage: 'assets/images/solona.png',
              tokenTitle: 'SOL',
              tokenSubTitle: 'Solona',
              tokenLineCurveData: [
                0.0,
                -0.4,
                -0.9,
                -2.0,
                -2.5,
                0.0,
                0.2,
                0.0,
              ],
              price: 390.00,
              ratio: 2.21,
              rationSign: '+',
              isLost: true,
            ),
            Divider(
              thickness: 2,
              color: Color(0xFF212436),
            ),
          ],
        )
      ],
    );
  }
}
