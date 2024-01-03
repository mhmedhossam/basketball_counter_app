import 'package:basketballpointer/button.dart';
import 'package:flutter/material.dart';

class BasketballCounter extends StatefulWidget {
  const BasketballCounter({super.key});

  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  int scoreA = 0;
  int scoreB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "points counter",
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    Text(
                      "$scoreA",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 150),
                    ),
                    buildButton("add 1 point", () {
                      {
                        setState(() {
                          if (scoreA < 99) {
                            scoreA += 1;
                          }
                        });
                      }
                    }),
                    const SizedBox(height: 20),
                    buildButton("add 2 point", () {
                      setState(() {
                        if (scoreA < 98) {
                          scoreA += 2;
                        }
                      });
                    }),
                    const SizedBox(height: 20),
                    buildButton("add 3 point", () {
                      setState(() {
                        if (scoreA < 97) {
                          scoreA += 3;
                        }
                      });
                    }),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.5,
                    indent: 20,
                    endIndent: 10,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    Text(
                      "$scoreB",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 150),
                    ),
                    buildButton("add 1 point", () {
                      setState(() {
                        if (scoreB < 99) {
                          scoreB += 1;
                        }
                      });
                    }),
                    const SizedBox(height: 20),
                    buildButton("add 2 point", () {
                      setState(() {
                        if (scoreB < 98) {
                          scoreB += 2;
                        }
                      });
                    }),
                    const SizedBox(height: 20),
                    buildButton("add 3 point", () {
                      setState(() {
                        if (scoreB < 97) {
                          scoreB += 3;
                        }
                      });
                    }),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            buildButton("Reset", () {
              setState(() {
                scoreA = 0;
                scoreB = 0;
              });
            }),
          ],
        ),
      ),
    );
  }
}
