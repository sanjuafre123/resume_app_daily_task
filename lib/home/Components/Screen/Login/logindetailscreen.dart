import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/img/bg2.jpg',
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Welcome Back,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 38),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Make it Work, make it right, make it fast.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'sanjuafre@gmail.com',
                  prefixIcon: const Icon(Icons.person_outlined),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: txtPassword,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.fingerprint),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff272727),
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(9),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'OR',
                style: TextStyle(fontSize: 17),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(9),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/google.jpg',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Sign-in with google',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don`t have an account?',
                      style: TextStyle(fontSize: 16)),
                  Text(
                    ' Signup',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
