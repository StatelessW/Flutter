import 'package:flutter/material.dart';

class NavigationDetails extends StatefulWidget {
  const NavigationDetails({Key? key}) : super(key: key);

  @override
  State<NavigationDetails> createState() => _NavigationDetailsState();
}

class _NavigationDetailsState extends State<NavigationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(true); // Butona basıldığında true değer döndürülmesini sağladık.
            },
            icon: const Icon(Icons.sentiment_dissatisfied),
            label: const Text('Vaaaay!')),
      ),
    );
  }
}
