import 'package:flutter/material.dart';
import 'package:qrscanner/pages/qr_generator.dart';
import 'package:qrscanner/pages/qr_scanner.dart';

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
      routes: {
        "/generate": (context)=> const QrGenerator(),
        "/scan":(context)=> const QrScanner()
      },
      initialRoute: "/scan",
    );
  }
}

