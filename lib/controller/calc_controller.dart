import 'package:operacoes_numericas/model/number.dart';

class CalcController {
  Number number = Number();

  void addNumber() {
    number.setValue(number.getValue() + 5);
  }

  void decreaseNumber() {
    number.setValue(number.getValue() - 5);
  }

  void multiplyNumber() {
    number.setValue(number.getValue() * 2);
  }

  void resetNumber() {
    number.setValue(0);
  }

  void isEven() {
    if (number.getValue() % 2 == 0) {
      number.setType('Par');
    } else {
      number.setType('ímpar');
    }
  }
}
