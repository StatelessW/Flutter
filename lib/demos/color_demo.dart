// Bir ekran, bu ekranda 3 buton, butonlara bastıkça renkler değişecek. Seçili olan buton seleceted buton olacak.

import 'package:flutter/material.dart';

class ColorTest extends StatefulWidget {
  const ColorTest({Key? key}) : super(key: key);

  @override
  State<ColorTest> createState() => _ColorTestState();
}

class _ColorTestState extends State<ColorTest> {
  static Color currentColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: currentColor,
        ),
        Padding(
          padding: _ProjectPaddings._rgbButtonsPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [makeRedButton(), makeGreenButton(), makeBlueButton()],
          ),
        )
      ],
    );
  }

  // TODO - ProjectButtons classının neden çalışmadığını anlayamadım ama callback fonksiyona ihtiyaç duyduğunu tahmin ediyorum.
  // TODO - Seçilen butonun selected hale getirilmesini sağlayacak bir yöntem bulmam gerekiyor.

  ElevatedButton makeBlueButton() {
    return ElevatedButton(
        onPressed: () => {
              setState(() {
                currentColor = Colors.blue;
              })
            },
        child: const Text('B'),
        style: ElevatedButton.styleFrom(primary: Colors.blue));
  }

  ElevatedButton makeGreenButton() {
    return ElevatedButton(
      onPressed: () => {
        setState(() {
          currentColor = Colors.green;
        })
      },
      child: const Text('G'),
      style: ElevatedButton.styleFrom(primary: Colors.green),
    );
  }

  ElevatedButton makeRedButton() {
    return ElevatedButton(
      onPressed: () => {
        setState(() {
          currentColor = Colors.red;
        })
      },
      child: const Text('R'),
      style: ElevatedButton.styleFrom(primary: Colors.red),
    );
  }
}

class _ProjectPaddings {
  static const EdgeInsets _rgbButtonsPadding = EdgeInsets.only(top: 700);
}

// Aşağıdaki kısım çalışmadı. Halbuki çok özenerek yazmıştım. Sanırım callback fonksiyonu lazım fakat onu beceremedim :(

class ProjectButtons {
  static final ElevatedButton blueElevatedButton = ElevatedButton(
      onPressed: () => {},
      child: const Text('B'),
      style: ElevatedButton.styleFrom(primary: Colors.blue));
  static final ElevatedButton greenElevatedButton = ElevatedButton(
      onPressed: () => {},
      child: const Text('G'),
      style: ElevatedButton.styleFrom(primary: Colors.green));

  static final ElevatedButton redElevatedButton = ElevatedButton(
      onPressed: () => {},
      child: const Text('R'),
      style: ElevatedButton.styleFrom(primary: Colors.red));
}
