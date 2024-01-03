import 'package:aufgabe_2/main.dart';
import 'package:aufgabe_2/page_5.dart';
import 'package:flutter/material.dart';

class page_4 extends StatelessWidget {
  page_4({
    super.key,
    required this.san,
  });
  int san;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: My4Page(
        san: san,
      ),
    );
  }
}

class My4Page extends StatefulWidget {
  My4Page({super.key, required this.san});
  int san;
  @override
  State<My4Page> createState() => _My4PageState();
}

class _My4PageState extends State<My4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page-4'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page_5(san5: san),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 200,
                color: Colors.green,
                child: Center(child: Text('SAn $san')),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
