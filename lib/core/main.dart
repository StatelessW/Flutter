import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mila/202/tab_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle:
                  TextStyle(fontSize: 24))), //  I used a with variable type code for make theme more editable. -.-
      home: const TabLearn(),
    );
  }
}

const userName = 'Gamze';
