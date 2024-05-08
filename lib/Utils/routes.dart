

import 'package:flutter/material.dart';
import '../home/Components/Screen/G-mail/G-mail.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/' : (context) => const Homescreen(),
    '/' : (context) => const Gmailscreen(),
  };
}