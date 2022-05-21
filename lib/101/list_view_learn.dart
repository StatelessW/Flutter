import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

String aHugeText = lorem(paragraphs: 5, words: 3000);

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(aHugeText),
        ],
      ),
    );
  }
}


// TODO - Buralar değerlenir... Burayı doldurup güzel bir uygulama yapabilirim.