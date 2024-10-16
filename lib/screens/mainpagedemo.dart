import 'package:flutter/material.dart';

class MainScreenDemo extends StatefulWidget {
  const MainScreenDemo({super.key});

  @override
  State<MainScreenDemo> createState() => _MainScreenDemoState();
}
class _MainScreenDemoState extends State<MainScreenDemo> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height / 5;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: const BoxDecoration(gradient: LinearGradient(
              colors:[Color(0xffFF5E5E),Color(0xffFF0000)],
              begin:Alignment.bottomLeft,
              end: Alignment.topRight
              )
            ),
            child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hi User",style:TextStyle(color: Colors.white,fontSize: 10),),
              CircleAvatar(backgroundColor: Colors.blue,),
            ],),
          )
        ],
      )),
    );
  }
}