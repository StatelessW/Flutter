import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: Text(_title),
        leading: IconButton(
            onPressed: () => {}, icon: const Icon(Icons.chevron_left)),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}

// TODO Appbar styles gibi, button styles gibi proje içerisinde birden fazla sayfada kullanılan elemanları, main.dart içindeki ThemeData'da kullanmak gerekiyor.