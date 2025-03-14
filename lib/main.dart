import 'package:flutter/material.dart';
import 'package:lankaqr/screeens/getStarted.dart';

import 'package:lankaqr/screeens/home1.dart';
import 'package:lankaqr/screeens/list.dart';
import 'package:lankaqr/screeens/qrScreen.dart';
import 'package:lankaqr/screeens/scanResult.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Getstarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
