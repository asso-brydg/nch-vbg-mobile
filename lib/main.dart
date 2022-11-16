import 'package:flutter/material.dart';

void main() {
  runApp(const NchVbgApp());
}

class NchVbgApp extends StatelessWidget {
  const NchVbgApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('NCH VBG'),
        ),
      ),
    );
  }
}
