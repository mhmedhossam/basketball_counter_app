import 'package:flutter/material.dart';

Widget buildButton(String nbutton, void Function() pressed) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: const Size(150, 50),
          backgroundColor: Colors.orange),
      onPressed: pressed,
      child: Text(
        nbutton,
        style: const TextStyle(color: Colors.black, fontSize: 17),
      ));
}
