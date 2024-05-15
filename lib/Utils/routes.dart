


import 'package:flutter/material.dart';
import '../home/Components/Screen/G-mail/G-mail.dart';
import '../home/Components/Screen/Google_Login_Page_With_Validation/Emailscreen.dart';
import '../home/Components/Screen/Google_Login_Page_With_Validation/LoginSuccessfuliy.dart';
import '../home/Components/Screen/Google_Login_Page_With_Validation/PasswordScreen.dart';
import '../home/Components/Screen/Login/logindetailscreen.dart';
import '../home/Components/Screen/Login/loginscreen.dart';
import '../home/Components/Screen/SnackBar & TextFormField/snaker.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/' : (context) => const Homescreen(),
    // '/Gmail' : (context) => const Gmailscreen(),
    //  '/Enterlogin' : (context) => const EnterLoginScreen(),
    // '/Login' : (context) => const LoginScreen(),
    // '/' : (context) => const GoogleScreen(),
    // '/Password' : (context) => const PasswordScreen(),
    // '/Succese' : (context) => const LoginSuccese(),
    '/' : (context) => const snakerpage(),


  };
}