import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        shadowColor: Colors.black26,
        backgroundColor: Color(0xffFFEAE3),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xFF121481)),
      ),
    );
  }
}
