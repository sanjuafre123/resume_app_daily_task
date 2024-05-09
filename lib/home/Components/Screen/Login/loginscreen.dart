import 'package:flutter/material.dart';

class EnterLoginScreen extends StatefulWidget {
  const EnterLoginScreen({super.key});

  @override
  State<EnterLoginScreen> createState() => _EnterLoginScreenState();
}

class _EnterLoginScreenState extends State<EnterLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe401),
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Image.asset(
            'assets/img/bg.png',
          ),
          Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Build Awesome Apps',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Text(
                'Let`s put your creativity on the',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Color(0xff685d00)),
              ),
              const Text(
                'development highway.',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Color(0xff685d00)),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 45),
                        height: 50,
                        width: 145,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pushNamed('/Login');
                            });
                          },
                          child: const Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 45),
                        height: 50,
                        width: 145,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
