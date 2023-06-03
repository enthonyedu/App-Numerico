import 'package:flutter/material.dart';
import 'package:operacoes_numericas/components/app_bar.dart';
import 'package:operacoes_numericas/components/main_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                buttonFunction: () {
                  Navigator.of(context).pushNamed('/calc');
                },
                buttonText: 'Acessar Calculadora',
              )
            ],
          )
        ],
      ),
    );
  }
}
