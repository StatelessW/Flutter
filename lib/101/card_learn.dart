import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            color: Colors.white,
            margin: ProjectMargins.cardMargin,
            child: SizedBox(height: 100, width: 500),
            shape: StadiumBorder(),
          ),
          Card(
              color: Theme.of(context).colorScheme.error,
              child: const SizedBox(height: 100, width: 400),
              margin: ProjectMargins.cardMargin,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
          const _CustomCards(
              child: Center(child: Text('')), customColor: Colors.purple)
        ],
      ),
    );
  }
}

class CustomBoxes {
  static BoxDecoration redCircleBox =
      const BoxDecoration(color: Colors.red, shape: BoxShape.circle);

  static BoxDecoration blueSquareBox = const BoxDecoration(
    color: Colors.blue,
  );
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(30);
}

class _CustomCards extends StatelessWidget {
  const _CustomCards({Key? key, required this.child, required this.customColor})
      : super(key: key);
  final Widget child;
  final Color customColor;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: customColor,
        child: const SizedBox(height: 100, width: 400),
        margin: ProjectMargins.cardMargin,
        shape: const StadiumBorder());
  }
}
