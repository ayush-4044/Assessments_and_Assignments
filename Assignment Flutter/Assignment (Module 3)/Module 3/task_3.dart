import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widgets")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            Text(
              "First",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.amber,

              ),
            ),
            SizedBox(height: 30),
            Text(
              "Second",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}