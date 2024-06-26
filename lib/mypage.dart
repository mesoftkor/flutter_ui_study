import 'package:flutter/material.dart';
import 'package:flutter_ui_study/responsive/responsive_layout.dart';
import 'package:flutter_ui_study/responsive/mobile_body.dart';
import 'package:flutter_ui_study/responsive/desktop_body.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
