import 'package:flutter/material.dart';
import 'package:mila/101/text_learn_widget.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scaffold Sample'),
        titleTextStyle: Styles.titleTextStyle,
      ),
      body: Text(
        'Selam',
        style: Styles.standartTextStyle,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.deepOrangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.deepOrangeAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.deepOrangeAccent,
              tooltip: 'Favorilere Ekle'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.deepOrangeAccent,
              tooltip: 'Ana Sayfaya Dön')
        ],
      ),
    );
  }
}
