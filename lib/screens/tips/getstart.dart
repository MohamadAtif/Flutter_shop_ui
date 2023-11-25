import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final myHieght = MediaQuery.of(context).size.height * 2 / 3;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: myHieght,
              decoration: const BoxDecoration(color: Colors.black),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
