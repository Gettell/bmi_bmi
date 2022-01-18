import 'package:flutter/material.dart';
import 'package:bmi_bmi/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0A0D22),
          ),
          textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: Color(0xFF0A0D22)),
      home: const InputPage(),
    );
  }
}


