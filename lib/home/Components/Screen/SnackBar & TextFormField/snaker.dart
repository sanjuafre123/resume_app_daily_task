import 'package:flutter/material.dart';

class snakerpage extends StatefulWidget {
  const snakerpage({super.key});

  @override
  State<snakerpage> createState() => _snakerpageState();
}

class _snakerpageState extends State<snakerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('SnackBar',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25)),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(210, 50),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text(
                  'Snaker bar is here',
                  style: TextStyle(fontSize: 16),
                ),
                action: SnackBarAction(
                  label: 'Retry',
                  onPressed: () {},
                ),
              ),
            );
          },
          child: const Text(
            'Click And Show Snakbar',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
