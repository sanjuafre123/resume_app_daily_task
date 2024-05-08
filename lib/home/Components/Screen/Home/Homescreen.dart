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
        elevation: 10,
        shadowColor: Colors.black26,
        backgroundColor: const Color(0xffFFEAE3),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xFF121481)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 105,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              color: Color(0xffFFB1B1),
            ),
            child: Center(child: Text('Status Bar',style: TextStyle(fontSize: 38,fontWeight: FontWeight.w500),)),
          ),
        ],
      ),
    );
  }
}
