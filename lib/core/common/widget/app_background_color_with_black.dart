import 'package:flutter/material.dart';

class AppBackgroundColorWithBlack extends StatelessWidget {
  final Widget screenContent;
  const AppBackgroundColorWithBlack({super.key, required this.screenContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/app_auth_background.png'),
              fit: BoxFit.fill)),
      child: screenContent,
    );
  }
}
