
import 'package:flutter/material.dart';

class increAnddecre extends StatefulWidget {
  const increAnddecre({super.key});

  @override
  State<increAnddecre> createState() => _increAnddecreState();
}

class _increAnddecreState extends State<increAnddecre> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Increment and Decrement"),
      centerTitle: true,),
      body: Center(child: Text("Counter : $count")),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },child: Icon(Icons.remove),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
