import 'package:flutter/material.dart';

class ListNameScreen extends StatefulWidget {
  const ListNameScreen({super.key});

  @override
  State<ListNameScreen> createState() => _ListNameScreenState();
}

class _ListNameScreenState extends State<ListNameScreen> {
  List namesList = [
    'Ayush',
    'Harsh',
    'Jeel',
    'Jeet',
    'Abhi',
    'Paramprakash',
    'Manan',
    'Jenil',
    'Dhaval',
    'Meet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("List of Names"),
      centerTitle: true,),
      body: Center(
        child: ListView.builder(
          itemCount: namesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(namesList[index]),
                tileColor: Colors.black54,
                textColor: Colors.white,
                onTap: () {
                  print("${namesList[index]} tapped");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}