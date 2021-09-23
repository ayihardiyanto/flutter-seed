import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterseed/presentation/widgets/atoms/typography.dart';

class SepotipaySplash extends StatefulWidget {
  const SepotipaySplash({Key? key}) : super(key: key);

  @override
  _SepotipaySplashState createState() => _SepotipaySplashState();
}

class _SepotipaySplashState extends State<SepotipaySplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      color: Colors.blueGrey,
      child: Heading('Sptpy'),
    );
  }
}
