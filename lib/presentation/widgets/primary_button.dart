import 'package:flutter/material.dart';

Widget primaryElevatedButton(
  {
    String? title,
    Function? onPress,
    Color? backgroundColor,
    Color? textColor,
  }
) {
  return Container(
    width: double.infinity,
    height: 45,
    child: Center(
      child: Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: textColor,
        ),
      ),
    ),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 3),
          blurRadius: 5,
          spreadRadius: 0,
        ),
      ],
      color: backgroundColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
    ),
  );
}
