import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSize iconSize = IconSize();
  final IconColor iconColor = IconColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Learn')),
      body: Column(
        children: [
          IconButton(
              color: iconColor.mountainMeadow,
              iconSize: iconSize.aLittleBig,
              onPressed: () => {},
              icon: const Icon(Icons.airplanemode_active_outlined))
        ],
      ),
    );
  }
}

class IconSize {
  final double standartSize = 24;
  final double aLittleBig = 32;
  final double bigSize = 36;
  final double biggerSize = 48;
}

class IconColor {
  final Color mountainMeadow = const Color(0xFFFFFFFF);
}
