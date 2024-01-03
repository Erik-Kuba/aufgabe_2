import 'package:aufgabe_2/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myDev(nummer: san),
    );
  }
}

class myDev extends StatefulWidget {
  myDev({super.key, required this.nummer});
  int nummer;
  @override
  State<myDev> createState() => _myDevState();
}

int san = 0;

class _myDevState extends State<myDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тапшырма 2'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  width: 400,
                  height: 40,
                  child: Center(
                    child: Text('Сан: $san '),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      san = san - 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    width: 70,
                    height: 50,
                    child: Center(
                      child: Text('-',
                          style: TextStyle(
                            fontSize: 90,
                            color: Colors.white,
                            height: 0.75,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      san = san + 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    width: 70,
                    height: 50,
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          height: .90,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 200),
                  width: 150,
                  height: 30,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    child: Center(
                      child: Text('Жыйынтык'),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewPage(jana2: san),
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      san++;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    color: Colors.blue,
                    child: Text('KAtaa $san'),
                  ),
                ),
                // IconButton
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class NewPage extends StatelessWidget {
//   const NewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('жаны бет'),
//       ),
//       body: Center(
//         child: Container(
//           child: Text('$san'),
//         ),
//       ),
//     );
//   }
// }
