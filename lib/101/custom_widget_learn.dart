import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            CustomButton(buttonText: 'Yiyecekler'),
            CustomButton(buttonText: 'İçecekler'),
            CustomButton(buttonText: 'Tatlılar'),
          ],
        ),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final normalPadding = EdgeInsets.all(8.0);
  final normal2xPadding = EdgeInsets.all(16.0);
}

class CustomButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: redColor, shape: StadiumBorder()),
      onPressed: () => {},
      child: Padding(
        padding: normalPadding,
        child: Text(buttonText,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
