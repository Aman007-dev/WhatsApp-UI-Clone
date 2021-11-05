import 'package:flutter/material.dart';
import 'WhatsApp_Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: const Color(0xff075E54),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xff250366)),
      ),
      debugShowCheckedModeBanner: false,
      home: const WhatsAppHome(),
    );
  }
}
