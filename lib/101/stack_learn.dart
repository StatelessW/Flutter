import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 200,
            color: Colors.deepOrange[700],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: 200,
              color: Colors.deepPurple[700],
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 125,
              height: 50,
              child: Container(
                color: Colors.green[700],
              ))
        ],
      ),
    );
  }
}
