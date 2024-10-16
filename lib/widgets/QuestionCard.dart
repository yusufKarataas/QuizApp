import 'package:flutter/material.dart';

class Questioncard extends StatefulWidget {
  const Questioncard({super.key,required this.text,required this.color,required this.ontap,required this.icon});
  final String text;
  final Color color;
  final VoidCallback ontap;
  final IconData icon;
  @override
  State<Questioncard> createState() => _QuestioncardState();
}

class _QuestioncardState extends State<Questioncard> {
  @override
  Widget build(BuildContext context) {
    const Color textColor = Colors.black;
    final cardWidth = MediaQuery.of(context).size.width - 30;
    final cardHeight = MediaQuery.of(context).size.height / 10;
    return GestureDetector(
      onTap: widget.ontap,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0 ,left:20,right: 20),
        child: Container(
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(15),
              boxShadow:[ BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4), // Gölgenin konumu
                    ),]
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:  10.0),
            child: Row(
              children: [
                Icon(widget.icon,size: 50,color: Colors.black,),
                const SizedBox(width: 50,),
                Center(
                  child: Text(widget.text,style: TextStyle(color: textColor,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}