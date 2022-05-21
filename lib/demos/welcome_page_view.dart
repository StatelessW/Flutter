import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GradientScaffold();
  }
}

// TODO - Stringler ve özelleştirmeler dışarı taşınacak!

class GradientScaffold extends StatelessWidget {
  const GradientScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: (Image.network(
              'https://i.pinimg.com/originals/3e/fd/13/3efd133b76a29919b088ed16776b5c0a.png',
              width: 345,
              height: 200,
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 90),
            child: Text(
              'WE MAKE YOUR MOVE',
              style: CustomTextStyle.headText,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, right: 10, left: 10),
            child: Text(
              'Get 20% Discount Now !\n            New Arrivals',
              style: CustomTextStyle.dicountText,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Icon(
              Icons.swipe_up_outlined,
              size: 28,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Swipe Up!',
            style: CustomTextStyle.swipeText,
          )
        ],
      ),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF600D63), Color(0xFF0053A2)])),
    );
  }
}

class CustomTextStyle {
  static const TextStyle swipeText = TextStyle(
      decoration: TextDecoration.none,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontFamily: "Times New Roman");

  static const TextStyle headText = TextStyle(
      decoration: TextDecoration.none,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 32,
      fontFamily: "Times New Roman");

  static const TextStyle dicountText = TextStyle(
      decoration: TextDecoration.none,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontFamily: "Times New Roman");
}
