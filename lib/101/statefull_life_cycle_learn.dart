import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  String _computedMessage = '';
  late bool _isOdd;


  @override
  void initState() {
    super.initState();
    _computedMessage = widget.message;
    _isOdd = widget.message.length.isOdd;
    computeMessage();
  }

  void computeMessage() {
    if (_isOdd) {
      _computedMessage += ' Tek';
    } else {
      _computedMessage += ' Çift';
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_computedMessage),
        ),
        body: _isOdd
            ? Container(color: Colors.red)
            : Container(color: Colors.green));
  }
}
