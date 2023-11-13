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
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("stateful"),
        ),
        body: Container(
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 + no2;
                              result = "The Sum Of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text("Add")),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 - no2;
                              result =
                                  "The substraction Of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text("sub")),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 * no2;
                              result =
                                  "The Multiplication Of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text("multi")),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 / no2;
                              result = "The Division Of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text("Div"))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      result,
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 29, 26, 26)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
