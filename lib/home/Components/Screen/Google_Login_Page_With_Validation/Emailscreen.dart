import 'package:flutter/material.dart';

class GoogleScreen extends StatefulWidget {
  const GoogleScreen({super.key});

  @override
  State<GoogleScreen> createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();

    return Scaffold(
      backgroundColor: const Color(0xfff0f4f8),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 330,
                  width: 450,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/google.jpg',
                              height: 62,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Row(
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 39, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Use your Google Account',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff404040)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 330,
                  width: 450,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 85, left: 15, right: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' please enter @gmail';
                            } else if (!value.contains('@gmail.com')) {
                              return 'invalid Email ID';
                            } else if (value.toString() == '@gmail.com') {
                              return 'invlid xyz@gmail.com';
                            }
                          },
                          controller: txtEmail,
                          decoration: InputDecoration(
                            labelText: 'Email or Phone',
                            labelStyle: const TextStyle(
                              color: Colors.blue,
                            ),
                            hintText: 'xyz123@gmail.com',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                'Forgot email?',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Text(
                                'Not your computer? Use guest mode to sign in privately.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Text(
                                ' Learn more',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Text(
                                    'Create account',
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        color: Colors.deepPurple,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, right: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      bool response =
                                          formkey.currentState!.validate();
                                      if (response) {
                                        Navigator.of(context)
                                            .pushNamed('/Password');
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      width: 76,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff0a58d0),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Text(
                                        'Next',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
