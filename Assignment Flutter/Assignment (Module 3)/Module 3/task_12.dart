import 'package:flutter/material.dart';

class SwitchWidgetScreen extends StatefulWidget {
  const SwitchWidgetScreen({super.key});

  @override
  State<SwitchWidgetScreen> createState() => _SwitchWidgetScreenState();
}

class _SwitchWidgetScreenState extends State<SwitchWidgetScreen> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(title: Text("Dark Mode and Light Mode"),
      centerTitle: true,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 300,),
              Text(
                isDark ? "Dark Mode" : "Light Mode",
                style: TextStyle(
                  fontSize: 20,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              Switch(
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    isDark = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
