import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.fromLTRB(0, 70, 0, 0),
                child: Container(
                  width: 380,
                  height: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 237, 247),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 300),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [Icon(Icons.home), Text("홈")]),
                  Column(children: [Icon(Icons.calendar_month), Text("학습미션")]),
                  Column(children: [Icon(Icons.menu), Text("전체")]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
