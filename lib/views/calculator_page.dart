import 'package:flutter/material.dart';
import 'package:operacoes_numericas/components/app_bar.dart';
import 'package:operacoes_numericas/components/main_button.dart';
import 'package:operacoes_numericas/controller/calc_controller.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final CalcController calcController = CalcController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                calcController.number.getValue().toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                calcController.number.getValue() > 0
                    ? 'Este numero é ${calcController.number.getType()}'
                    : '',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              mainButton(
                buttonFunction: () {
                  setState(() {
                    calcController.addNumber();
                    calcController.isEven();
                  });
                },
                buttonText: '+5',
                buttonCollor: Colors.green.shade900,
              ),
              const SizedBox(
                width: 10,
              ),
              mainButton(
                buttonFunction: () {
                  setState(() {
                    calcController.decreaseNumber();
                    calcController.isEven();
                    if (calcController.number.getValue() < 0) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Aviso'),
                            content: Text('O número é negativo.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  });
                },
                buttonText: '-5',
                buttonCollor: Colors.red.shade400,
              ),
              const SizedBox(
                width: 10,
              ),
              mainButton(
                buttonFunction: () {
                  setState(() {
                    calcController.multiplyNumber();
                    calcController.isEven();
                  });
                },
                buttonText: 'x2',
                buttonCollor: Colors.lightBlue.shade200,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              mainButton(
                buttonFunction: () {
                  setState(
                    () {
                      calcController.resetNumber();
                      calcController.isEven();
                    },
                  );
                },
                buttonText: 'Zerar Número',
                buttonCollor: Colors.yellow.shade600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
