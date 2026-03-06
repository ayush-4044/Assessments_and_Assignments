import 'package:flutter/material.dart';


class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(height: 200, color: Colors.blueGrey),
              const Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://picsum.photos/100')),
                ),
              ),
            ],
          ),

          // 2. Details Section
          const SizedBox(height: 60),
          const Text("Jane Doe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Text("UX/UI Designer", style: TextStyle(color: Colors.grey)),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Minimalist at heart. I love building clean interfaces."),
          ),
        ],
      ),
    );
  }
}