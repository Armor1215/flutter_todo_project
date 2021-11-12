import 'package:flutter/material.dart';

const kLargeButtonTextStyle =
TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white);

class BottomButtom extends StatelessWidget {
  BottomButtom({required this.onTap, required this.title});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: 70.0,
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
          ),
        ),
      );
  }
}