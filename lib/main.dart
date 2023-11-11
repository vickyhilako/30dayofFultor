import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 245, 53, 5)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print("Click taped on Container");
            },
            onDoubleTap: () {
              print("Click Double taped on Container");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
              child: Center(
                child: InkWell(
                  onTap: () {
                    print("Text Widget Tapped");
                  },
                  child: Text(
                    "click here",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
