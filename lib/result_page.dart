import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_content.dart';

class ResultPage extends StatelessWidget {
  final String bmi, bmiResult, bmiInterpretation;

  ResultPage({this.bmi, this.bmiResult, this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Your Result',
                  style: kBmiResultTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          bmiResult,
                          style: kBmiResultTextStyle,
                        ),
                        Text(
                          bmi,
                          style: kBmiTextStyle,
                        ),
                        Text(
                          bmiInterpretation,
                          textAlign: TextAlign.center,
                          style: kBmiResultSuggestionTextStyle,
                        ),
                      ],
                    ),
                  ),
                )),
            BottomContent(
              label: 'Re-calculate',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
