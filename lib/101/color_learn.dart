import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: const Text('Bu bir deneme yazısıdır.'),
          color: ColorItems.cornFlowerBlue),
    );
  }
}

class ColorItems {
  static const Color cornFlowerBlue = Color(0xFF6195ED);
}
