import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text Widget Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Text(
          'A very long text that might not fit the screen. ' * 10,
          // try commenting the below line and see the difference
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
