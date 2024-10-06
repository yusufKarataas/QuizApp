import 'package:flutter/material.dart';

class backbutton extends StatefulWidget {
  const backbutton({super.key,required this.ontap});
  final VoidCallback ontap;
  @override
  State<backbutton> createState() => _BackbuttonState();
}

class _BackbuttonState extends State<backbutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Center(child: Icon(Icons.exit_to_app)),
      ),
    );
  } 
}