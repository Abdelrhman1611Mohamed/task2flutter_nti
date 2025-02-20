import 'package:flutter/material.dart';

class Taps extends StatefulWidget {
  final String title;

  Taps({required this.title});

  @override
  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  bool isSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected; 
        });
      },
      child: Container(
        width: 70,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isSelected ? Colors.green : Colors.transparent,
          border: Border.all(color: Colors.green), 
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 12,
              fontWeight:isSelected? FontWeight.w600 : FontWeight.w300,
              color: isSelected ? Colors.white : const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
