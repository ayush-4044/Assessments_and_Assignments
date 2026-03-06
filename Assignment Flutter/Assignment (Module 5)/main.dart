import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import 'Module 4,5,6/task_5.1.dart';
import 'Module 4,5,6/task_5.2.dart';
import 'Module 4,5,6/task_5.3.dart';


void main() {
  runApp(

    MyApp()
  //     ChangeNotifierProvider(
  //     create: (context) => CartProvider(),
  // child: MyApp(),
  // ),


    // ProviderScope(
    //   child: MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      home:CounterApp()
    );
  }
}