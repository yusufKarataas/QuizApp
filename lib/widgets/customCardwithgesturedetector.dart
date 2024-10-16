import 'package:flutter/material.dart';

class CustomCardWithGestureDetector extends StatefulWidget {
  const CustomCardWithGestureDetector({super.key,required this.text,required this.ontap,});
  final String text;
  final VoidCallback ontap;
  @override
  State<CustomCardWithGestureDetector> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCardWithGestureDetector> {
  @override
  Widget build(BuildContext context) {
    final CardWith = MediaQuery.of(context).size.width / 2 - 20;
    final CardHeight = MediaQuery.of(context).size.height / 6;
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        width: CardWith,
        height: CardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 4), // Gölgenin konumu
                  ),]
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: const Icon(Icons.alarm,)),
            const Text("Pomodoro Timer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Text(widget.text,style: const TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}