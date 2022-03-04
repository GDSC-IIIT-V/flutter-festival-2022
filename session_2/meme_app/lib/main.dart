import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: const Text(
            'Meme App',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Alegreya',
              letterSpacing: 2.0,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(200, 0, 0, 0),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.orange[800],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.network(
                        'https://files.worldwildlife.org/wwfcmsprod/images/Panda_in_Tree/hero_small/99i33zyc0l_Large_WW170579.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                    ),
                    const Text(
                      'Falgun ka app nahi chal raha h :(',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Cursive',
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
