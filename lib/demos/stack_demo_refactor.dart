import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);
  final String imageURL =
      'https://images.unsplash.com/photo-1477414348463-c0eb7f1359b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(child: Image.network(imageURL)),
                  Positioned(
                    height: 50,
                    width: 200,
                    bottom: 0,
                    child: Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ],
              )),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}
