import 'package:bmi_bmi/bottom_button.dart';
import 'package:bmi_bmi/constants.dart';
import 'package:bmi_bmi/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text ('YOUR RESULT', style: titleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text (resultText.toUpperCase(), style: resultTextStyle,),
                  Text (bmiResult, style: bmiTextStyle,),
                  Text (interpretation, style: bodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
              ),
          ),
          BottomButton(onTap: () {
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
