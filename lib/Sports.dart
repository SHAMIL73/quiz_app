import 'package:flutter/material.dart';
import 'package:flutter_application_1/ProviderDemo.dart';
import 'package:flutter_application_1/Resultpage.dart';
import 'package:flutter_application_1/List.dart';
import 'package:provider/provider.dart';

class sports extends StatefulWidget {
  const sports({Key? key}) : super(key: key);
  @override
  State<sports> createState() => _sportsState();
}

class _sportsState extends State<sports> {
  int index = 0; // Initialize index to 0
  int mark = 0;
  Color containerColorA = Colors.white;
  Color containerColorB = Colors.white;
  Color containerColorC = Colors.white;
  Color containerColorD = Colors.white;
  // Function to handle button press and navigate to the next question
  void goToNextQuestion() {
    if (index < QuestionsS.length - 1) {
      // Check if there are more QuestionsS
      setState(() {
        index++; // Increment the index
      });
    } else {
      // If there are no more QuestionsS, navigate to the result page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Resultpage(
                  mark: mark,
                )),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 14, 3, 169),
                  Color.fromRGBO(0, 0, 0, 1),
                ],
              ),
            ),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 39),
                      child: Provider.of<ProviderDemo>(context).text1(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${QuestionsS[index].number}",
                              style: const TextStyle(fontSize: 55, color: Colors.green),
                            ),
                            TextSpan(
                              text: "${QuestionsS[index].question}",
                              style: const TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: SizedBox(
                           width : MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(containerColorA),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                 ),),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (QuestionsS[index].indexofAnswer == 0) {
                                    mark++;
                                    containerColorA = Colors.green;
                                  } else {
                                    containerColorA = Colors.red;
                                  }
                                });
                                Future.delayed(const Duration(milliseconds: 250), () {
                                  setState(() {
                                    if (index != 4) {
                                      index++;
                                    } else {
                                      goToNextQuestion();
                                    }
                                    containerColorA = Colors.white;
                                  });
                                });
                              },
                              child: Text(
                                QuestionsS[index].options![0],
                                style:
                                    const TextStyle(fontSize: 26, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: SizedBox(
                           width : MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(containerColorB),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                 ),),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (QuestionsS[index].indexofAnswer == 1) {
                                    mark++;
                                    containerColorB = Colors.green;
                                  } else {
                                    containerColorB = Colors.red;
                                  }
                                });
                                Future.delayed(const Duration(milliseconds: 250), () {
                                  setState(() {
                                    if (index != 4) {
                                      index++;
                                    } else {
                                      goToNextQuestion();
                                    }
                                    containerColorB = Colors.white;
                                  });
                                });
                              },
                              child: Text(
                                QuestionsS[index].options![1],
                                style:
                                    const TextStyle(fontSize: 26, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: SizedBox(
                      width : MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(containerColorC),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                 ),),
                          ),
                          onPressed: () {
                            setState(() {
                              if (QuestionsS[index].indexofAnswer == 2) {
                                mark++;
                                containerColorC = Colors.green;
                              } else {
                                containerColorC = Colors.red;
                              }
                            });
                            Future.delayed(const Duration(milliseconds: 250), () {
                              setState(() {
                                if (index != 4) {
                                  index++;
                                } else {
                                  goToNextQuestion();
                                }
                                containerColorC = Colors.white;
                              });
                            });
                          },
                          child: Text(
                            QuestionsS[index].options![2],
                            style: const TextStyle(fontSize: 26, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: SizedBox(
                        width : MediaQuery.of(context).size.width,
                           height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(containerColorD),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                 ),),
                          ),
                          onPressed: () {
                            setState(() {
                              if (QuestionsS[index].indexofAnswer == 3) {
                                mark++;
                                containerColorD = Colors.green;
                              } else {
                                containerColorD = Colors.red;
                              }
                            });
                            Future.delayed(const Duration(milliseconds: 250), () {
                              setState(() {
                                if (index != 4) {
                                  index++;
                                } else {
                                  goToNextQuestion();
                                }
                                containerColorD = Colors.white;
                              });
                            });
                          },
                          child: Text(
                            QuestionsS[index].options![3],
                            style: const TextStyle(fontSize: 26, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}