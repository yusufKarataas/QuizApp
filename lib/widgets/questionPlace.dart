import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/QuestionCard.dart';
import 'package:flutter_application_1/question_categories/flutter/flutter_quiz_screendemo.dart';

class Questionplace extends StatefulWidget {
  const Questionplace({super.key});

  @override
  State<Questionplace> createState() => _QuestionplaceState();
}

class _QuestionplaceState extends State<Questionplace> {
  @override
  Widget build(BuildContext context) {
    final placeWidth = MediaQuery.of(context).size.width - 30;
    final placeHeight = MediaQuery.of(context).size.height - 480;
    return Padding(
      padding:  EdgeInsets.only(top:20.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.white,
         boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 4), // Gölgenin konumu
                  ),]
        ),
        width: placeWidth,
        height: placeHeight,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Column(
              children: [
                Questioncard(text: "Flutter Quiz",color: Color.fromARGB(255, 176, 253, 148),ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreenDemo()));},icon:Icons.flutter_dash,),
                Questioncard(text: "JavaScript Quiz",color: Color(0xffFFF79A),ontap: (){},icon: Icons.javascript_sharp,),
                Questioncard(text: "CSS Quiz", color: Color(0XFFFF8484),ontap: (){},icon: Icons.css_sharp,)
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}