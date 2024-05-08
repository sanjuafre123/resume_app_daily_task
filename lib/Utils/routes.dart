

import 'package:flutter/material.dart';

import '../Screen/G-mail/G-mail.dart';
import '../Screen/Home/Homescreen.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/' : (context) => const Homescreen(),
    '/' : (context) => const Gmailscreen(),
  };
}