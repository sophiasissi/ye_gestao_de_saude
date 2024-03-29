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
        useMaterial3: true,
      ),
      home: Container(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blueGrey[700],
              width: 392,
              height: 80,
              child: Text('YE Gestão de Saúde',
                style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w100, overflow: TextOverflow.clip),
                textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
