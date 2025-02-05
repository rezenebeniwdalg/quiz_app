// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/Resultscreen.dart';
import 'package:quiz_app/controller/core/colorconst.dart';
import 'package:quiz_app/controller/homescreencontroller.dart';
// import 'package:quiz_app_jan/controller/home_screen_controller.dart';
// import 'package:quiz_app_jan/core/constants/color_constants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQstnIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswerscount = 0;
  int wrongans = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.darkGrey),
                child: Text(
                  HomeScreenController
                      .flutterQuestions[currentQstnIndex].question,
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                    HomeScreenController
                        .flutterQuestions[currentQstnIndex].optionsList.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;
                              if (selectedAnswerIndex ==
                                  HomeScreenController
                                      .flutterQuestions[currentQstnIndex]
                                      .correctAnswerIndex) {
                                rightAnswerscount++;
                              }
                              if (selectedAnswerIndex !=
                                  HomeScreenController
                                      .flutterQuestions[currentQstnIndex]
                                      .correctAnswerIndex) {
                                wrongans++;
                              }

                              print(rightAnswerscount);
                              print(wrongans);
                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: (index ==
                                                  HomeScreenController
                                                      .flutterQuestions[
                                                          currentQstnIndex]
                                                      .correctAnswerIndex &&
                                              selectedAnswerIndex != null)
                                          ? Colors.green
                                          : selectedAnswerIndex == index
                                              ? (selectedAnswerIndex ==
                                                      HomeScreenController
                                                          .flutterQuestions[
                                                              currentQstnIndex]
                                                          .correctAnswerIndex
                                                  ? Colors.green
                                                  : Colors.red)
                                              : ColorConstants.primaryGrey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    HomeScreenController
                                        .flutterQuestions[currentQstnIndex]
                                        .optionsList[index],
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontSize: 18),
                                  ),
                                  Icon(
                                    // Icons.close_rounded,
                                    buildIcons(index),
                                    color: ColorConstants.primaryGreen,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (currentQstnIndex <
                      HomeScreenController.flutterQuestions.length - 1) {
                    currentQstnIndex++;
                    selectedAnswerIndex = null;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  rightanswercount: rightAnswerscount,
                                  wrongans: wrongans,
                                )));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryBlue),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color buldcolor(int index) {
    if (index ==
            HomeScreenController
                .flutterQuestions[currentQstnIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Colors.green;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex ==
          HomeScreenController
              .flutterQuestions[currentQstnIndex].correctAnswerIndex) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return ColorConstants.primaryGrey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            HomeScreenController
                .flutterQuestions[currentQstnIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex !=
          HomeScreenController
              .flutterQuestions[currentQstnIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
