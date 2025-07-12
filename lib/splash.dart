import 'package:bmicalc/ma.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class spl extends StatefulWidget {
  const spl({super.key});

  @override
  State<spl> createState() => _splState();
}

class _splState extends State<spl> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> bc(),));
    },);

    return Scaffold(body: Center(child: Lottie.asset('mbt_calculator.json'),),);
  }
}
