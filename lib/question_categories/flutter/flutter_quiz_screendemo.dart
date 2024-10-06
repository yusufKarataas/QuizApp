import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/finish_page.dart';
import 'package:flutter_application_1/questions/questions.dart';
import 'package:flutter_application_1/widgets/counter.dart';

class FlutterScreenDemo extends StatefulWidget {
  const FlutterScreenDemo({super.key});

  @override
  State<FlutterScreenDemo> createState() => _FlutterScreenState();
}

class _FlutterScreenState extends State<FlutterScreenDemo> {
  int questionNumber = 0;
  bool? isTrue;
  Color buttonColor = Colors.grey; //bunu bir kontrol et gereksiz değer ise sil.
  Color ifTrue = Colors.green;    //bunu bir kontrol et gereksiz değer ise sil.
  int trueScore = 0;
  int falseScore = 0;
  String selectedOption = '';
  bool isFinished = false;
  int questionCount = 0;

  void checkTrue(String option) {
    setState(() {
      selectedOption = option;
      if (isTrue = selectedOption == questions[questionNumber].correctOption) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Cevabınız Doğru"),
          ),
        );
        trueScore++;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Cevabınız Yanlış")));
        falseScore++;
      }
    });
    Future.delayed(const Duration(seconds: 1), () {
      changeQuestion();
      questionCount++;
    });
  }

  void changeQuestion() {
    setState(() {
      if (questionNumber < questions.length - 1) {
        questionNumber++;
        selectedOption = '';
      } else {
        isFinished = true;
        if (isFinished) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FinishPage()));
        }
      }
    });
  }

  Color getColor(String option) {
    if (selectedOption.isEmpty) {
      return const Color.fromARGB(255, 83, 147, 207);
    } else if (option == questions[questionNumber].correctOption) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ekran boyutlarını almak için MediaQuery kullanıyoruz
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 41, 123, 199),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Row(children: [
             Padding(
               padding: const EdgeInsets.only(left:15,top: 40.0),
               child: Counter(text: questionCount.toString()),
             ),
            ],),
            SizedBox(
              height: screenHeight * 0.15, // Ekran yüksekliğinin %20'si kadar boşluk
            ),
            Container(
              width: screenWidth * 0.9, // Ekran genişliğinin %90'ı kadar genişlik
              height: screenHeight * 0.25, // Ekran yüksekliğinin %25'i kadar yükseklik
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  questions[questionNumber].question,
                  style: TextStyle(
                    fontSize: screenWidth * 0.07, // Ekran genişliğine göre dinamik font boyutu
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05, // Ekran yüksekliğinin %5'i kadar boşluk
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: Column(children: [
                buildOptionButton(screenWidth, questions[questionNumber].option1),
                SizedBox(
                  height: screenHeight * 0.03, // Ekran yüksekliğinin %3'ü kadar boşluk
                ),
                buildOptionButton(screenWidth, questions[questionNumber].option2),
                SizedBox(
                  height: screenHeight * 0.03, // Ekran yüksekliğinin %3'ü kadar boşluk
                ),
                buildOptionButton(screenWidth, questions[questionNumber].option3),
                SizedBox(
                  height: screenHeight * 0.03, // Ekran yüksekliğinin %3'ü kadar boşluk
                ),
                buildOptionButton(screenWidth, questions[questionNumber].option4),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionButton(double screenWidth, String option) {
    return Container(
      width: screenWidth * 0.9, // Ekran genişliğinin %90'ı kadar genişlik
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: getColor(option),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => checkTrue(option),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            option,
            style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.05),
          ),
        ),
      ),
    );
  }
}
