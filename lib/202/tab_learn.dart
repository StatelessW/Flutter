import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  Color xColor = Colors.white;
  int _curentIndex = 0;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_tabControllerHandler);
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
      _curentIndex = _tabController.index;
      _curentIndex == 0 ? xColor = Colors.green : xColor = Colors.red;
    });
  }
}
