import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    onPress() {
      if(_usernameController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("请填写手机号")));
        return;
      }
      if(_passwordController.text.isEmpty){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("请填写密码")));
      }
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                    height: MediaQuery.of(context).size.height * 0.33,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Form(
                      child: Column(
                        children: [
                          const Center(
                            child: Text("请输入用户信息登录",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(134, 114, 99, 1))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _usernameController,
                            keyboardType: const TextInputType.numberWithOptions(decimal: false),
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            decoration: InputDecoration(
                              hintText: '手机号',
                              labelText: '手机号',
                              contentPadding:
                                  const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1.0),
                              ),
                            ),
                            style: const TextStyle(height: 1.0),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                                hintText: '密码',
                                labelText: '密码',
                                contentPadding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 1.0),
                                )),
                            obscureText: true,
                            style: const TextStyle(height: 1.0),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("手机号登录",
                                  style: TextStyle(
                                      color: Color.fromRGBO(134, 114, 99, 1))),
                              Text("忘记密码？",
                                  style: TextStyle(
                                      color: Color.fromRGBO(134, 114, 99, 1)))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                onPressed: onPress,
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(196, 185, 166, 1)),
                                child: const Text("注册"),
                              )),
                              const SizedBox(width: 20),
                              Expanded(
                                  child: ElevatedButton(
                                onPressed: onPress,
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromRGBO(220, 174, 68, 1)),
                                child: const Text("登录"),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text("游客登录>",
                                style: TextStyle(
                                    color: Color.fromRGBO(134, 114, 99, 1))),
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
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                        child: Divider(
                      color: Colors.black45,
                      height: 1.0,
                    )),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: const Text(
                        "合作账号登录",
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.black45,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.wechat,
                        color: Color.fromRGBO(203, 192, 173, 1), size: 54.0)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ));
  }
}
