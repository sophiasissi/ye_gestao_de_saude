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
      title: 'YE Gestão de Saúde',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Container(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              color: Colors.blueGrey[700],
              width: 392,
              height: 75,
              child: Text('YE Gestão de Saúde',
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}

