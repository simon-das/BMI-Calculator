import 'dart:math';

class CalculatorBrain {
  int height, weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'Your body weight is lower than normal. You should eat a bit more.';
    }
  }
}
