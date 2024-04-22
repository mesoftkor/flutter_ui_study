import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text('MediaQuery'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Width : ' + MediaQuery.of(context).size.width.toString()),
              Text('Height : ' + MediaQuery.of(context).size.height.toString()),
              //MediaQuery.of(context).size.aspectRatio.toString()로 표시하면 소수점 이하 16자까지 표시됨
              //toStringAsFixed(2) 소수점 2자리까지만 표시함.
              Text('가로세로비율(aspectRatio) : ' +
                  MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
              //가로 / 세로 상태 구분
              Text('Height : ' + MediaQuery.of(context).orientation.toString()),
            ],
          ),
        ));
  }
}
