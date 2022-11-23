import 'package:flutter/material.dart';
import 'package:flutter_nft_wallet/utilities/const_data.dart';
import 'package:flutter_nft_wallet/utilities/custom_google_font.dart';

const List<String> list = <String>['\$ 5,323.00', '\$ 23,902.00'];

class DropdownButtonWallet extends StatefulWidget {
  const DropdownButtonWallet({super.key});

  @override
  State<DropdownButtonWallet> createState() => _DropdownButtonWalletState();
}

class _DropdownButtonWalletState extends State<DropdownButtonWallet> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      dropdownColor: primaryColor,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 1,
      style: customGoogleFont(fontSize: 40, fontWeight: FontWeight.w600),
      underline: Container(
        height: 2,
        color: Colors.transparent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
