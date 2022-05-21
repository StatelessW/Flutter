import 'package:flutter/material.dart';

// Diğer uygulamayı videoyu izlemeden evvel kendim kodlamaya çalıştım. Bu uygulama ise Veli hocanın videosunu izledikten sonra kodlandı.

class ColorDemoRefactor extends StatefulWidget {
  const ColorDemoRefactor({Key? key, required this.initialColor}) : super(key: key);
  final Color?
      initialColor; // Burada tanımladığımız bu değişken ColorLifeCycle içerisinde required bir parametre istememizi sağlıyor.

  @override
  State<ColorDemoRefactor> createState() => _ColorDemoRefactorState();
}

class _ColorDemoRefactorState extends State<ColorDemoRefactor> {
  Color? _backgroundColor; // Burada yeni bir backgroundColor değeri tutuyoruz.

  @override
  void initState() {
    _backgroundColor = widget.initialColor ??
        Colors
            .transparent; // Yeni backgroundColor değerini initialColor'a eşliyoruz ve herhangi bir değer gönderilmezse initialColor'ın transparan olmasını sağlıyoruz.
    super.initState();
  }

  @override
  // Bu fonksiyon, initialColor ile backgroundColor eşit değilse ve initialColor null dönmüyorsa initialColor'ın değiştirilmesini sağlıyor.
  void didUpdateWidget(covariant ColorDemoRefactor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      _changeBackgroundColor(widget.initialColor!);
    }
  }

  // TODO - Aslında buraları açıklayabiliyorum fakat yine de farklı bir uygulama yapıp buradaki mantığı iyi oturmam gerekiyor bence.
  // TODO - Bir konu daha ilerleyeceğim, o arada bunu nasıl bir uygulamaya dökebilirim diye düşüneceğim ve duruma göre o uygulamaya başlayacağım.

  void _changeBackgroundColor(Color color) {
    // Bu fonksiyonun görevi ise backgroundColor'ı değiştirmek.
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: _ontapPainter,
        items: const [
          BottomNavigationBarItem(icon: _NavBarButtonColor(navbarColor: Colors.red), label: 'Red'),
          BottomNavigationBarItem(icon: _NavBarButtonColor(navbarColor: Colors.green), label: 'Green'),
          BottomNavigationBarItem(icon: _NavBarButtonColor(navbarColor: Colors.blue), label: 'Blue')
        ],
      ),
    );
  }

  void _ontapPainter(int value) {
    // Bu fonksiyon; seçili butonlara tıklandığında gönderilecek renk değerlerini belirliyor.
    if (value == _MyColors.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.green.index) {
      _changeBackgroundColor(Colors.green);
    } else if (value == _MyColors.blue.index) {
      _changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors {
  red,
  green,
  blue
} // Burası _MyColors adında bir sıralama ve tanımlama yapmamızı sağladı fakat mantığını çok anlamadım.
// Bu enum işi önemli bir işe benziyor, ileride buralara değinmezsek kendim kurcalayıp oturtmalıyım bu işi.

class _NavBarButtonColor extends StatelessWidget {
  // NavBar'daki butonların renklerini temsil edecek bıdık Containerlar oluşturmamızı sağlayan fonksiyon.
  const _NavBarButtonColor({
    Key? key,
    required this.navbarColor,
  }) : super(key: key);

  final Color navbarColor;

  @override
  Widget build(BuildContext context) {
    return Container(width: 10, height: 10, color: navbarColor);
  }
}
