import 'package:flutter/material.dart';
import 'package:mila/101/text_learn_widget.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Container & SizedBox',
        ),
        titleTextStyle: Styles.titleTextStyle,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('x' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('y' * 50),
          ),
          Container(
            height: 50,
            constraints: const BoxConstraints(
                maxWidth: 500, minWidth: 20, maxHeight: 500),
            child: Text('z' * 3),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.purple, Colors.pink]),
      shape: BoxShape.circle,
      border: Border.all(
        width: 3,
        color: Colors.white,
      ));
}
