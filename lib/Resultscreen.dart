import 'package:flutter/material.dart';
import 'package:quiz_app/controller/homescreencontroller.dart';
import 'package:quiz_app/homescreen.dart';
import 'package:quiz_app/quizappquestions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.rightanswercount, required this.wrongans});
  final int rightanswercount;
  final int wrongans;
  @override
  Widget build(BuildContext context) {
    final percentage =
        (rightanswercount / HomeScreenController.flutterQuestions.length) * 100;

    final skipped = HomeScreenController.flutterQuestions.length -
        (wrongans + rightanswercount);

    return Scaffold(
      body: Container(
          color: Colors.black,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "congrats!",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "your score is ${percentage.round()}%",
                style: TextStyle(color: Colors.green),
              ),
              Text("Correct answers: ${rightanswercount}",
                  style: TextStyle(color: Colors.white)),
              Text("wrong answers : ${wrongans}",
                  style: TextStyle(color: Colors.white)),
              Text("skipped answers: ${skipped}",
                  style: TextStyle(color: Colors.white)),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                      border: Border.all(color: Colors.white)),
                  width: 100,
                  child: Text(
                    "Restart",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
