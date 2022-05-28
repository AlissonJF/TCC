import 'package:flutter/material.dart';

class ScreenPrimaryPJ extends StatelessWidget {
  const ScreenPrimaryPJ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("Tela Pessoa Jurídica"),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
    );
  }
}
