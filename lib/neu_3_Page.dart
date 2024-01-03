import 'package:aufgabe_2/4_page.dart';
import 'package:aufgabe_2/second_page.dart';
import 'package:flutter/material.dart';

// class NuePage extends StatefulWidget {
//   NuePage({super.key, required this.san});
//   int san;
//   @override
//   State<NuePage> createState() => _NuePageState(san: san);
// }

// class _NuePageState extends State<NuePage> {
//   _NuePageState({required this.san});
//   int san;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DRitte Page'),
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 60,
//               width: 200,
//               color: Colors.grey,
//               child: Center(
//                 child: Text('San $san '),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       san++;
//                     });
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 70,
//                     color: Colors.grey,
//                     child: Center(
//                       child: Text('+'),
//                     ),
//                   ),
//                 ),
//                 // SizedBox(width: 20,),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       san--;
//                     });
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 70,
//                     color: Colors.grey,
//                     child: Center(
//                       child: Text('-'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               child: IconButton(
//                 icon: Icon(
//                   Icons.next_plan,
//                   size: 40,
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => page_4(
//                         san4: san,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class NuePage extends StatefulWidget {
  NuePage({super.key, required this.san1});
  int san1;
  @override
  State<NuePage> createState() => _NuePageState(san: san1);
}

class _NuePageState extends State<NuePage> {
  _NuePageState({required this.san});
  int san;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DRitte Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 200,
              color: Colors.grey,
              child: Center(
                child: Text('San$san'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      san++;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 70,
                    color: Colors.grey,
                    child: Center(
                      child: Text('+'),
                    ),
                  ),
                ),
                // SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      san--;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 70,
                    color: Colors.grey,
                    child: Center(
                      child: Text('-'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.next_plan,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => page_4(
                        san: san,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.keyboard_return, size: 20),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => My2Page(
                                jana1: san,
                              )));
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
          ],
        ),
      ),
    );
  }
}
