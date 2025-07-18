import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  String resultText = '';
  List<String> texts = [];
  int sum = 0;
  void showInput() {
    setState(() {
      // texts.add(_controller.text);
      int k = int.parse(_controller.text);
      if (k != Null) sum += k;
      if (k == 0) sum = 0;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '여기에 입력하세요',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: showInput,
                  child: const Text('입력값 확인'),
                ),
                const SizedBox(height: 30),
                Text(
                  '총 합 : $sum',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // ...texts.map(
                //   (text) => Text(text, style: const TextStyle(fontSize: 18)),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
