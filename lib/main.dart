import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '1',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    onPress() {
      print("Hello World");
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/test.jpg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Form(
                  child: Column(
                    children: [
                      const Center(
                        child: Text("请输入用户信息登录", style: TextStyle(fontSize: 18, color: Color.fromRGBO(134, 114, 99, 1))),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: '手机号',
                          contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide:
                            const BorderSide(color: Colors.red, width: 1.0),
                          ),
                        ),
                        style: const TextStyle(height: 1.0),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: '密码',
                            contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              borderSide:
                              const BorderSide(color: Colors.red, width: 1.0),
                            )
                        ),
                        obscureText: true,
                        style: const TextStyle(height: 1.0),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text("手机号登录", style: TextStyle(color: Color.fromRGBO(134, 114, 99, 1))), Text("忘记密码？", style: TextStyle(color: Color.fromRGBO(134, 114, 99, 1)))],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(child: ElevatedButton(onPressed: onPress, child: const Text("注册"), style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(196, 185, 166, 1)),)),
                          const SizedBox(width: 20),
                          Expanded(child: ElevatedButton(onPressed: onPress, child: const Text("登录"), style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(220, 174, 68, 1)))),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("游客登录>", style: TextStyle(color: Color.fromRGBO(134, 114, 99, 1))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 20,),
                Expanded(child: Divider(color: Colors.black45, height: 1.0,)),
                const SizedBox(width: 2,),
                Container(
                  child: const Text("合作账号登录",),
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(2.0)
                  ),
                ),
                const SizedBox(width: 2,),
                Expanded(child: Divider(color: Colors.black45, height: 1.0,),),
                const SizedBox(width: 20,),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.wechat, color: Color.fromRGBO(203, 192, 173, 1), size: 54.0)
              ],
            ),
            const SizedBox(height: 20,),
          ],
        )
      ],
    ));
  }
}
