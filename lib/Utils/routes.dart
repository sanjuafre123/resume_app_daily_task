import 'package:flutter/material.dart';

import '../Screen/Home/Homescreen.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/' : (context) => Homescreen(),
  };
}