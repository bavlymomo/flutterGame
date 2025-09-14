// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyGame());
}

class MyGame extends StatefulWidget {
  const MyGame({super.key});
  @override
  // ignore: no_logic_in_create_state
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  List<String> images = List.generate(9, (index) => "image-${index + 1}.png");
  int change1 = Random().nextInt(9);
  int change2 = Random().nextInt(9);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("تطابق الصور", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.indigo[800],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            change1 != change2
                ? Text(
                    " حاول مرة اخري ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                : Text(
                    "انت فزت ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        change1 = Random().nextInt(9);
                        change2 = Random().nextInt(9);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/' + images[change1]),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        change1 = Random().nextInt(9);
                        change2 = Random().nextInt(9);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/' + images[change2]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
