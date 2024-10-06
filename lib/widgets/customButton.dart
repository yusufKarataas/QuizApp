import 'package:flutter/material.dart';

class Custombutton extends StatefulWidget {
  const Custombutton({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
  });

  final String text;
  final Color color;
  final VoidCallback ontap;

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width - 20;
    final buttonHeight = MediaQuery.of(context).size.height / 12;

    return InkWell(
      onTap: () {
        // Tıklama olayının çalıştığını kontrol etmek için bir print ifadesi ekleyin
        print('Button tapped');
        widget.ontap();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            border: Border.all(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          width: buttonWidth,
          height: buttonHeight,
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
