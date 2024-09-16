import 'package:adaptive_app/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveApp());
}

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffDBDBDB)),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
