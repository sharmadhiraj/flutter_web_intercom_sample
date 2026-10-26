import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/screens/home_screen.dart';

class IntercomSampleApp extends StatelessWidget {
  const IntercomSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Web Intercom Sample",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF1F8DED),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
