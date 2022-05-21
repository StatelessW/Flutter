import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _counterState = 0;

  void increament() {
    setState(() {
      _counterState++;
    });
  }

  void decreament() {
    setState(() {
      _counterState--;
    });
  }

  void reset() {
    setState(() {
      _counterState = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: counterText(context)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          increamentButton(),
          const SizedBox(width: 10),
          decreamentButton(),
          const SizedBox(width: 10),
          resetButton()
        ],
      ),
    );
  }

  FloatingActionButton resetButton() {
    return FloatingActionButton(
      onPressed: () => {reset()},
      backgroundColor: Colors.yellow[700],
      child: const Icon(
        Icons.restart_alt_outlined,
        color: Colors.white,
      ),
    );
  }

  FloatingActionButton decreamentButton() {
    return FloatingActionButton(
        onPressed: () => {decreament()},
        backgroundColor: Colors.red[700],
        child: const Icon(
          Icons.exposure_minus_1,
          color: Colors.white,
        ));
  }

  FloatingActionButton increamentButton() {
    return FloatingActionButton(
      backgroundColor: Colors.green[700],
      onPressed: () => {increament()},
      child: const Icon(
        Icons.plus_one,
        color: Colors.white,
      ),
    );
  }

  Text counterText(BuildContext context) => Text(_counterState.toString(),
      style: Theme.of(context).textTheme.headline2);
}
