import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/Settings.dart';
import 'package:flutter_application_1/screens/Stats.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});


  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final CardWidth = MediaQuery.of(context).size.width - 30;
    final CardHeight = MediaQuery.of(context).size.height / 12;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        width: CardWidth,
        height: CardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
            boxShadow:[ BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4), // Gölgenin konumu
                    ),]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));},child: const Icon(Icons.home)),
              GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>const Stats()));},child: const Icon(Icons.graphic_eq_sharp)),
              GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));},child: const Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}