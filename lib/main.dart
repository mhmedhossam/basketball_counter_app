import 'package:basketballpointer/basketball.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCounter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasketballCounter();
  }
}
