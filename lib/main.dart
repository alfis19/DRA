import 'package:dra/pages/spalshscreen.dart';
import 'package:flutter/material.dart';

import 'pages/login.dart';
import 'pages/register.dart';

void main() => runApp(const Materialapp());

class Materialapp extends StatelessWidget {
  const Materialapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_(),
    );
  }
}
