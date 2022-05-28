import 'package:flutter/material.dart';

class ScreenPrimaryMotorista extends StatelessWidget {
  const ScreenPrimaryMotorista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("Tela Motorista"),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {})
        ],
      ),
    );
  }
}
