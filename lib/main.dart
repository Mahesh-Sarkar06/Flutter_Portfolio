import 'package:flutter/material.dart';

import 'utils/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        canvasColor: Colors.purple.shade500,
        useMaterial3: true,
        fontFamily: "Ubuntu",
      ),
      debugShowCheckedModeBanner: false,
      home: const Portfolio(),
    );
  }
}
