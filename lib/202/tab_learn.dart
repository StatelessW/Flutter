import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  Color xColor = Colors.white; // Rengi daha sonra manipüle edebilmek için değişkene atadım.
  int _curentIndex = 0; // index değeri, varsayılan olarak 0.
  late TabController
      _tabController; // init anında _tabController adında ve TabController tipinde bir değişken oluşturulmasını sağladım.
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(
        _tabControllerHandler); // Burayı Stackoverflow'dan aldım. Sanırım _tabController'a bir takipçi atayıp, fonksiyonun kullanımına sunuyor.
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          extendBody: true,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: xColor,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: TabBar(
              controller: _tabController,
              indicatorColor: xColor,
              tabs: const [
                Tab(
                  text: 'Tab Red',
                ),
                Tab(text: 'Tab Green')
              ],
            ),
          ),
          body: TabBarView(controller: _tabController, children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            )
          ]),
        ));
  }

  _tabControllerHandler() {
    setState(() {
      _curentIndex = _tabController.index; // Varsayılan olarak 0 olan indexi, _tabController'ın indexine eşitliyor.
      _curentIndex == 0
          ? xColor = Colors.green
          : xColor = Colors.red; // index 0 ise yeşil, 1 ise kırmızı FAB ve indicator rengi yaratıyor.
    });
  }
}
