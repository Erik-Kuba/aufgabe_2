import 'package:aufgabe_2/main.dart';
import 'package:aufgabe_2/neu_3_Page.dart';
import 'package:flutter/material.dart';

class My2Page extends StatelessWidget {
  My2Page({super.key, required this.jana1});
  int jana1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewPage(jana2: jana1));
  }
}

class NewPage extends StatefulWidget {
  NewPage({super.key, required this.jana2});
  int jana2;

  @override
  State<NewPage> createState() => _NewPageState(san: jana2);
}

class _NewPageState extends State<NewPage> {
  _NewPageState({required this.san});
  int san;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('жаны 2-бет '),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NuePage(
                  san1: san,
                ),
              ),
            );
            print(san);
            setState(() {
              san;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                ),
                height: 60,
                width: 200,
                child: Center(child: Text('san: $san ')),
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => NuePage(san1: san)));
              //     setState(() {
              //       san++;
              //     });
              //   },
              //   child: Container(
              //     height: 50,,
              //     width: 80,
              //     color: Colors.blue,
              //     child: Text('KAtaa $san'),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
