import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            onTap: () => {},
            title: Text('Profilim'),
            subtitle: Text('Profiliniz ve kişisel ayarlarınız.'),
            leading: Icon(Icons.person_pin_outlined),
            trailing: Icon(Icons.arrow_right_rounded),
          )
        ],
      ),
    );
  }
}
