import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => {},
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: const Text('Place a Bet'),
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.2),
            ))),
          )
        ],
      ),
    );
  }
}
