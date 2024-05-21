import 'package:flutter/material.dart';
import '../home/Components/Screen/G-mail/G-mail.dart';
import '../home/Components/Screen/Generate_Dynamic_Text_Field/dynamic_text.dart';
import '../home/Components/Screen/Google_Login_Page_With_Validation/Emailscreen.dart';
import '../home/Components/Screen/Google_Login_Page_With_Validation/LoginSuccessfuliy.dart';
import '../home/Components/Screen/Google_Login_Page_With_Validation/PasswordScreen.dart';
import '../home/Components/Screen/Home/Homescreen.dart';
import '../home/Components/Screen/ID_Cards_Registration_Form/CardDetailsScreen.dart';
import '../home/Components/Screen/ID_Cards_Registration_Form/Cardscreen.dart';
import '../home/Components/Screen/Invoice/invoice.dart';
import '../home/Components/Screen/Invoice/pdf.dart';
import '../home/Components/Screen/Login/logindetailscreen.dart';
import '../home/Components/Screen/Login/loginscreen.dart';
import '../home/Components/Screen/SnackBar & TextFormField/snaker.dart';
import '../home/Components/Screen/image_picker/img_picker.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {

    // '/homes' : (context) => const Homescreen(),
    // '/Gmail' : (context) => const Gmailscreen(),
    //  '/Enterlogin' : (context) => const EnterLoginScreen(),
    // '/Login' : (context) => const LoginScreen(),
    // '/google' : (context) => const GoogleScreen(),
    // '/Password' : (context) => const PasswordScreen(),
    // '/Succese' : (context) => const LoginSuccese(),
    // '/snaker' : (context) => const snakerpage(),
    // '/imgpicker' : (context) => const imgpicker(),
    // '/' : (context) => const CardScreen(),
    // '/CardDetail' : (context) => const CardDetailScreen(),
    // '/' : (context)  => const TextFieldScreen(),
    '/' : (context)  => const InvoiceScreen(),
    '/pdf' : (context)  => const PdfScreen(),

  };
}