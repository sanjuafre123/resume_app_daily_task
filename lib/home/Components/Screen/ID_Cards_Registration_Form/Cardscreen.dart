import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person_2_sharp,size: 30,),
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Information',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
