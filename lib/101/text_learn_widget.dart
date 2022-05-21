import 'package:flutter/material.dart';

import '../core/main.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectStrings strings = ProjectStrings();
    return const Text('');
  }
}

class Styles {
  static TextStyle standartTextStyle = const TextStyle(
    color: Colors.orange,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    fontStyle: FontStyle.italic,
    letterSpacing: 4,
  );

  static TextStyle extremeTextStyle = const TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    fontStyle: FontStyle.italic,
    letterSpacing: 4,
  );

  static TextStyle titleTextStyle = const TextStyle(
    color: Colors.deepOrangeAccent,
    fontWeight: FontWeight.w900,
    fontSize: 24,
    fontStyle: FontStyle.italic,
    letterSpacing: 4,
  );

  static ThemeData themes = ThemeData(brightness: Brightness.dark);
}

class ProjectStrings {
  static const String welcomeText = 'Merhaba $userName! ❤️';
  static const String goodByeText = 'Güle Güle $userName! ☺️';
}
