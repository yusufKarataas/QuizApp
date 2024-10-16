import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pomodoro.dart';
import 'package:flutter_application_1/widgets/customCard.dart';
import 'package:flutter_application_1/widgets/customCardwithgesturedetector.dart';
import 'package:flutter_application_1/widgets/navbar.dart';
import 'package:flutter_application_1/widgets/questionPlace.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenDemoState();
}

class _MainScreenDemoState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height / 5;
    final screenWidth = MediaQuery.of(context).size.width;
    const String userName = "Yusuf";

    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: Column(
        children:[
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
          
                
              ),
              gradient:const LinearGradient(
                colors: [ Color(0xffFF5E5E), Color.fromARGB(255, 253, 72, 72)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 4), // Gölgenin konumu
                  ),]
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                   width: 70,
                   height: 70,
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                   ),
                 ),
                 Padding(
                  padding:  EdgeInsets.only(top:20.0),
                  child: Text(
                    "Hi $userName!",
                    style:  TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
               
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomCard(text: ""),
                const SizedBox(width: 15),
                CustomCardWithGestureDetector(
                  text: "",
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PomodoroScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          const Questionplace(),
          const Navbar(),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}
