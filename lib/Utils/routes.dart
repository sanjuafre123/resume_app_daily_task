

import 'package:flutter/material.dart';
import '../home/Components/Screen/G-mail/G-mail.dart';
import '../home/Components/Screen/Login/logindetailscreen.dart';
import '../home/Components/Screen/Login/loginscreen.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/' : (context) => const Homescreen(),
    // '/' : (context) => const Gmailscreen(),
     '/' : (context) => const EnterLoginScreen(),
    '/Login' : (context) => const LoginScreen(),
  };
}