import 'package:flutter/material.dart';

class GoogleScreen extends StatefulWidget {
  const GoogleScreen({super.key});

  @override
  State<GoogleScreen> createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 450,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/img/google.jpg',height: 55,),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('Sign in',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text('Use by Google Account')
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
