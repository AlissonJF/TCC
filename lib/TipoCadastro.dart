import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tcc/ScreenCadastro/ScreenPrimaryMotorista.dart';
import 'package:tcc/ScreenCadastro/ScreenPrimaryPJ.dart';
import 'package:tcc/ScreenCadastro/ScreenPrimaryUser.dart';

class TipoCadastro extends StatefulWidget {
  const TipoCadastro({Key? key}) : super(key: key);

  @override
  _TipoCadastroScreen createState() => _TipoCadastroScreen();
}

class _TipoCadastroScreen extends State<TipoCadastro> {
  bool valueTip = false;

  Widget buildPJBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CadastroLoginPJ())),
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: const Text(
          "Cadastro PJ",
          style: TextStyle(
              color: Color.fromARGB(255, 44, 120, 182),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildMotoristaBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CadastroLoginMotorista())),
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: const Text(
          "Cadastro Motorista",
          style: TextStyle(
              color: Color.fromARGB(255, 44, 120, 182),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildUserBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CadastroLoginUser())),
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: const Text(
          "Cadastro Comum",
          style: TextStyle(
              color: Color.fromARGB(255, 44, 120, 182),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 32, 138, 199),
                      Color.fromARGB(204, 79, 149, 206),
                      Color.fromARGB(153, 64, 147, 185),
                      Color.fromARGB(102, 50, 173, 211),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Tipo de Cadastro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 100),
                      buildPJBtn(),
                      const SizedBox(height: 20),
                      buildMotoristaBtn(),
                      const SizedBox(height: 20),
                      buildUserBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
