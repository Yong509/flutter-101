import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter demo"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "this is body",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("$counter"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Button"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
            TextField(
              controller: textFieldController,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
          print(textFieldController.text);
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
