import 'package:flutter/material.dart';

class FinishPage extends StatefulWidget {
  final int trueScore;
  final int falseScore;
  const FinishPage({super.key, required this.falseScore, required this.trueScore});

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height:200,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius:BorderRadius.circular(50)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Doğru sayısı: ${widget.trueScore}"),
              ),
              Center(
                child: Text("Yanlış sayısı: ${widget.falseScore}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
