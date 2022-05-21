import 'package:flutter/material.dart';
import 'package:mila/101/padding_learn.dart';
import 'package:mila/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children: const [PaddingLearn(), StackLearn()],
      ),
    );
  }
}
