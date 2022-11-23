import 'package:flutter/material.dart';
import 'package:flutter_nft_wallet/utilities/const_data.dart';
import 'package:flutter_nft_wallet/screens/home_widget.dart';
import 'package:flutter_nft_wallet/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomAppBar(
          accountName: "Mustafa Adnan",
          profileImagePath: 'assets/images/profile_1.png'),
      body: const HomeWidget(),
    );
  }
}
