import 'package:flutter/material.dart';

class NavDrawerApp extends StatefulWidget {
  const NavDrawerApp({super.key});

  @override
  State<NavDrawerApp> createState() => _NavDrawerAppState();
}

class _NavDrawerAppState extends State<NavDrawerApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text("Home Screen", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Profile Screen", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Settings Screen", style: TextStyle(fontSize: 24))),
  ];

  final List<String> _titles = ["Home", "Profile", "Settings"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_currentIndex])),

      body: _screens[_currentIndex],

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                setState(() => _currentIndex = 0);
                Navigator.pop(context); // Closes the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                setState(() => _currentIndex = 1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                setState(() => _currentIndex = 2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}