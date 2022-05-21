import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Image.asset('assets/masjid.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1.5,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Center(
                          child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => {},
                          child: Text('Buton'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blueGrey[300]),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.2),
                                ),
                              )),
                        ),
                      )))
                ],
              )),
          Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}
