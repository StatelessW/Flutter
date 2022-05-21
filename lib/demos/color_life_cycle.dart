import 'package:flutter/material.dart';
import 'color_demo_refactor.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _changeBackground, icon: const Icon(Icons.ac_unit_outlined))],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(child: ColorDemoRefactor(initialColor: _backgroundColor))
        ], // Bu kısımda zaten bir şey yok ekranın yarısını spacer ile kapattık, diğer yarısı için ise ColorDemoRefactor'deki uygulamayı çağırdık.
      ),
    );
  }

  void _changeBackground() {
    // Bu fonksiyon basitçe yukarıda yerel değişken olarak tanımladığımız _backgroundColor değişkeninin değiştirilmesini sağlıyor.
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}

// TODO - Buraları iyi anlamak gerekiyor. Yarın buraya kadar olan kısmı anlayarak ve not alarak tekrar dinlemem lazım.