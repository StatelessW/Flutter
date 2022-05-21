import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: _ProjectPadding.standartPadding,
        child: Column(
          children: [
            _ProjectAssets.nikeSS,
            Padding(
              padding: _ProjectPadding.textPadding,
              child: Text(
                _ProjectTexts.headerText,
                style: _TextStyles.headerText,
              ),
            ),
            Padding(
              padding: _ProjectPadding.discountTextPadding,
              child: Text(_ProjectTexts.discountText,
                  style: _TextStyles.discountText),
            ),
            Padding(
              padding: _ProjectPadding.swipeIconPadding,
              child: Icon(
                Icons.arrow_upward_outlined,
                color: Colors.black,
                size: 34,
              ),
            ),
            Text(
              _ProjectTexts.swipeText,
              style: _TextStyles.swipeText,
            )
          ],
        ),
      ),
    );
  }
}

class _ProjectPadding {
  static const EdgeInsets standartPadding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 100);
  static const EdgeInsets textPadding = EdgeInsets.only(top: 100);
  static const EdgeInsets discountTextPadding = EdgeInsets.only(
    top: 20,
  );
  static const EdgeInsets swipeIconPadding = EdgeInsets.only(top: 175);
}

class _ProjectAssets {
  static Image nikeSS = Image.network(
      'https://i.pinimg.com/originals/3e/fd/13/3efd133b76a29919b088ed16776b5c0a.png');
}

class _ProjectTexts {
  static var headerText = 'WE MAKE YOUR MOVE';
  static var discountText = 'Get 20% Discount Now !\n          New Arrivals';
  static var swipeText = 'Swipe Up!';
}

class _TextStyles {
  static TextStyle headerText = const TextStyle(
    color: Colors.black,
    fontSize: 28,
    letterSpacing: 3,
  );

  static TextStyle discountText = const TextStyle(
    color: Colors.black,
    fontSize: 14,
  );

  static TextStyle swipeText = const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}
