import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  
  final String text;
  final Function() onPressed;
 
  const CustomButton({
    Key? key, 
    required this.text, 
    required this.onPressed
    }) : super(key: key); 
 
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff609847),
          borderRadius: BorderRadius.circular(32)
        ),
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(this.text, style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
      onPressed: this.onPressed
    );
  }
}