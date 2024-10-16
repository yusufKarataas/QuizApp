import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key,required this.text});
  final String text;
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final CardWith = MediaQuery.of(context).size.width / 2 - 20;
    final CardHeight = MediaQuery.of(context).size.height / 6;
    return Container(
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
      child: Column(
        children: [
          const Text("Quote",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
    );
  }
}