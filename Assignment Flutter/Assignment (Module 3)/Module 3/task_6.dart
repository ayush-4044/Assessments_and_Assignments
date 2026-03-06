import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Card"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage("assets/user_img.png"),
              ),
              SizedBox(height: 30),
              Text(
                "Ayush Hirpara",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Flutter Developer")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
