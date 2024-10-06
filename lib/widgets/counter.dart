import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key,required this.text});
  final String text;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,

                ),
                width: screenWidth * 0.15,
                height: screenHeight * 0.05,
                child: Center(child: Text(widget.text)),
              );
  }
}