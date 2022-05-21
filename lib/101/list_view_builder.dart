import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  late final List<CollectionModel> _items;
  @override
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            child: SizedBox(
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(_items[index].imagePath),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Text(_items[index].title),
                        ),
                      ),
                      Text('${_items[index].limit} ₺'),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double limit;

  CollectionModel({required this.imagePath, required this.title, required this.limit});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000),
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000),
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000),
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000),
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000),
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000),
      CollectionModel(imagePath: 'assets/images/visa.png', title: 'Visa Credit Card', limit: 3000)
    ];
  }
}
