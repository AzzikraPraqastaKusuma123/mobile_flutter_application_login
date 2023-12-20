import 'package:flutter/material.dart';
import 'login_page.dart';


void main() {
  runApp(const Main_page());
}

class Main_page extends StatelessWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
