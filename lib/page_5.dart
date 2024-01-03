import 'package:flutter/material.dart';

class page_5 extends StatelessWidget {
  page_5({super.key, required this.san5});
  int san5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page_5'),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          color: Colors.blueGrey,
          child: Center(child: Text('san $san5')),
        ),
      ),
    );
  }
}
