import 'package:flutter/material.dart';

class LoginSuccese extends StatefulWidget {
  const LoginSuccese({super.key});

  @override
  State<LoginSuccese> createState() => _LoginSucceseState();
}

class _LoginSucceseState extends State<LoginSuccese> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
          height: height * 0.69,
          width: width * 0.23,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width: 1),
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                  ),
                  Image.asset(
                    'assets/img/success.png',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '      Login \nSuccessfully',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
