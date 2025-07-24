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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(18,10,18,10),
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 224, 224, 224),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                 child: Column(
                   children: [
                      Align(
                      alignment: Alignment.topCenter,
                        child: Image(
                          image: AssetImage("assets/googlelogo.png"),
                          width: 70,height: 70,
                        ), 
                    ),
                    Text(
                      '로그인',style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Gmail로 이동',style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '이메일 또는 휴대전화',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.blue
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('이메일을 잊으셨나요?',style: TextStyle(fontSize: 13,color: Colors.blue)),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(text: '내 컴퓨터가 아닌가요? 게스트 모드를 사용하여 비공개로 로그인하세요.',
                          style: TextStyle(color: Colors.black,fontSize: 12)),
                          const TextSpan(text: ' 게스트 모드 사용 방법 자세히 알아보기',
                          style: TextStyle(color: Colors.blue,fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          TextButton(
                            onPressed: (){},
                            child: Text('계정 만들기',style: TextStyle(fontSize: 12,color: Colors.blue),)
                          ),
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  
                                )
                              ),
                              child: Text('다음',style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                          )

                      ],
                    ),
                   ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}