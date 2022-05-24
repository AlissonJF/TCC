import 'package:flutter/material.dart';

class ScreenPrimary extends StatelessWidget {
  const ScreenPrimary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("Tela Usuário"),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {})
        ],
      ),
    );
  }
}
