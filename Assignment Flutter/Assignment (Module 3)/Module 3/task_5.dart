import 'package:flutter/material.dart';

class RowWidgetScreen extends StatelessWidget {
  const RowWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Row Widget"), centerTitle: true),
      body: Center(
        child: Container(
          height: height * 0.25,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 50, color: Colors.amber),
              SizedBox(width: 10),
              Container(width: 20, color: Colors.purple),
              SizedBox(width: 10),
              Container(width: 10, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
