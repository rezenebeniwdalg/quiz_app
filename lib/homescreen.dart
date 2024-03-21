import 'package:flutter/material.dart';
import 'package:quiz_app/quizappquestions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(8),
          color: Colors.black,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 230,
                            child: Text(
                              "Hi, Aishu",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                              width: 230,
                              child: Text(
                                "Lets make this day more productive",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/19594010/pexels-photo-19594010/free-photo-of-woman-wearing-a-jacket.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(140, 158, 158, 158),
                ),
                padding: EdgeInsets.all(15),
                width: 270,
                child: Text(
                  "Choose a category",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 400,
                  child: Text(
                    "Lets play",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(140, 158, 158, 158),
                              ),
                              height: 200,
                              width: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.network(
                                        "https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg?auto=compress&cs=tinysrgb&w=600",
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "Sports",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "5 questions",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(140, 158, 158, 158),
                              ),
                              height: 200,
                              width: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 130,
                                      child: Image.network(
                                        "https://images.pexels.com/photos/3825379/pexels-photo-3825379.jpeg?auto=compress&cs=tinysrgb&w=600",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "Chemistry",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "5 questions",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(140, 158, 158, 158),
                              ),
                              height: 200,
                              width: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.network(
                                          "https://images.pexels.com/photos/714699/pexels-photo-714699.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "Math",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "5 questions",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(140, 158, 158, 158),
                              ),
                              height: 200,
                              width: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 130,
                                      child: Image.network(
                                          "https://images.pexels.com/photos/3199399/pexels-photo-3199399.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "History",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                      width: 140,
                                      child: Text(
                                        "5 questions",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
