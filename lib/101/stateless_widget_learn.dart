import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);
  final String milaText = "Mila";
  final String gamzeText =
      "Gamze"; // Stringlerin her zaman burada olması gerekiyor.
  final String dcText = "Doğancan";
  final String ethemText = "Ethem👟⚽";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            _TitleTextWidget(titleText: milaText),
            _TitleTextWidget(titleText: gamzeText),
            _TitleTextWidget(
                titleText:
                    dcText), // Bu tarafta stringler manuel olarak değil, yukarıda değişkenlere tanımlanarak buraya çağırılmalı.
            _TitleTextWidget(titleText: ethemText),
            const _CustomContainerWidget()
          ],
        ),
      ),
    );
  }
}

class _CustomContainerWidget extends StatelessWidget {
  const _CustomContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({Key? key, required this.titleText}) : super(key: key);
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(titleText, style: Theme.of(context).textTheme.headline3);
  }
}
