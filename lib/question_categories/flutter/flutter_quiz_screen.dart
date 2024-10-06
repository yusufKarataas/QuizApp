import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions/questions.dart';
import 'package:flutter_application_1/widgets/BackButton.dart';
import 'package:flutter_application_1/widgets/customButton.dart';

class FlutterQuizScreen extends StatefulWidget {
  const FlutterQuizScreen({super.key});

  @override
  State<FlutterQuizScreen> createState() => _FlutterQuizScreenState();
}

class _FlutterQuizScreenState extends State<FlutterQuizScreen> {
  int questionNumber = 0;
  Color buttonColor1 = Colors.white;
  Color buttonColor2 = Colors.white;
  Color buttonColor3 = Colors.white;
  Color buttonColor4 = Colors.white;

  void checkAnswer(String selectedOption) {
    // Doğru cevabı kontrol et
    bool isCorrect = questions[questionNumber].correctOption == selectedOption;

    setState(() {
      // Buton rengini cevaba göre ayarla
      if (selectedOption == questions[questionNumber].option1) {
        buttonColor1 = isCorrect ? Colors.green : Colors.red;
      } else if (selectedOption == questions[questionNumber].option2) {
        buttonColor2 = isCorrect ? Colors.green : Colors.red;
      } else if (selectedOption == questions[questionNumber].option3) {
        buttonColor3 = isCorrect ? Colors.green : Colors.red;
      } else if (selectedOption == questions[questionNumber].option4) {
        buttonColor4 = isCorrect ? Colors.green : Colors.red;
      }

      // Sonraki soruya geç
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          questionNumber++;
          resetButtonColors();
        });
      });
    });
  }

  void resetButtonColors() {
    buttonColor1 = Colors.white;
    buttonColor2 = Colors.white;
    buttonColor3 = Colors.white;
    buttonColor4 = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final bluethingHeight = MediaQuery.of(context).size.height / 4 + 55;
    final bluethingWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: bluethingWidth,
            height: bluethingHeight,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 79, 146, 255),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 110.0, left: 10),
                  child: backbutton(ontap: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 110.0, left: 250),
                  child: Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "${questionNumber + 1}/8",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: bluethingHeight - 100,
            left: 40,
            right: 40,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  questions[questionNumber].question,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
            top: bluethingHeight + 150,
            left: 25,
            right: 25,
            child: Column(
              children: [
                Custombutton(
                  text: questions[questionNumber].option1,
                  ontap: () => checkAnswer(questions[questionNumber].option1),
                  color: buttonColor1,
                ),
                SizedBox(height: 10),
                Custombutton(
                  text: questions[questionNumber].option2,
                  ontap: () => checkAnswer(questions[questionNumber].option2),
                  color: buttonColor2,
                ),
                SizedBox(height: 10),
                Custombutton(
                  text: questions[questionNumber].option3,
                  ontap: () => checkAnswer(questions[questionNumber].option3),
                  color: buttonColor3,
                ),
                SizedBox(height: 10),
                Custombutton(
                  text: questions[questionNumber].option4,
                  ontap: () => checkAnswer(questions[questionNumber].option4),
                  color: buttonColor4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
