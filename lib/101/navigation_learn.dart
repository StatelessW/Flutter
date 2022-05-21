import 'package:flutter/material.dart';
import 'package:mila/101/navigation_details.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedPlaceHolders = []; // Seçilen PlaceHolder'ları bir arrayde topluyoruz
  void addSelected(int index) {
    // Int türünde bir index bekliyoruz.
    setState(() {
      selectedPlaceHolders.add(index); // Seçilen PlaceHolder'ı selectedPlaceHolders listesine ekliyoruz.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              // async - await? -.-
              final response = await navigateToShit<bool>(context,
                  const NavigationDetails()); // Burada navigate edilecek olan widgettan bize bool tipinde bir değer göndermesini istedik.

              if (response == true) {
                addSelected(index);
              } // Eğer response true gelirse, şu işlemi yap diyoruz. Ki şuan, diğer sayfada kurduğumuz logic sayesinde true geliyor.
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: selectedPlaceHolders.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ElevatedButton(child: const Text('Buton'), onPressed: () {})),
        ],
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
    ));
  }

  Future<T?> navigateToShit<T>(BuildContext context, Widget widget) {
    // Future<T> olayını daha sonra öğrenecekmişiz. Şimdilik ezberlememiz kâfiymiş.
    return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
    ));
  }
}
