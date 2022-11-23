// ignore: file_names
import 'package:flutter/material.dart';

import '../utilities/custom_google_font.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar(
    {required String accountName, required String profileImagePath}) {
  const Color color1 = Color(0xFF0AFF96);
  const Color color2 = Color(0xFF00E0FF);
  // const String accountName = "Account name";
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child: Center(
        child: CircleAvatar(
          radius: 25,
          child: ClipOval(
            child: Image.asset(
              profileImagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ),
    title: Text(
      accountName,
      style: customGoogleFont(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    leadingWidth: 90,
    centerTitle: false,
    titleSpacing: 0,
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
  );
}
