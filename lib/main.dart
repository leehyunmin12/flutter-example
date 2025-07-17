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
  int i = 0;

  void showInput() {
    setState(() {
      texts[i] = _controller.text;
      i++;
      for (var j = 0; j <= i; j++) Text('$texts');
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

                ///style: const TextStyle(fontSize: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
