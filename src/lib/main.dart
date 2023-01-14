import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      leading: TextButton(
        onPressed: () {},
        child: Text(
          "Filter",
          style: TextStyle(color: Colors.black),
        ),
      ),
      title: Row(
        children: [
          Image.asset('assets/images/logo.png', height: 30, width: 30),
          Text("Plate Pals")
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    ));
  }
}
