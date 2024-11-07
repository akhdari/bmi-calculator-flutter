import 'dart:math';

class BmiBrain {
  final double height;
  final int weight;
  BmiBrain({required this.height, required this.weight});

  double bmi_calculator() {
    double heightMeter = height/100;
    double bmi= (weight / pow(heightMeter, 2));
    return bmi;
  }

  String observation() {
    double bmi=bmi_calculator();
    if (bmi < 18.5) {
      return 'underweight';
    } else if (bmi >= 25) {
      return 'overweight';
    } else {
      return 'normal';
    }
  }

  String advice() {
    String status = observation(); 
    if (status == 'underweight') {
      return 'You have a lower than normal body weight.\n Try to eat a bit more.';
    } else if (status == 'overweight') {
      return 'You have a higher than normal body weight.\n Try to exercise more.';
    } else {
      return 'You have a normal body weight.\n Good job!';
    }
  }
}
