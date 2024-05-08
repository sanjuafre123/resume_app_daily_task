import 'package:flutter/material.dart';

import '../../Utils/globallist.dart';

class Gmailscreen extends StatefulWidget {
  const Gmailscreen({super.key});

  @override
  State<Gmailscreen> createState() => _GmailscreenState();
}

class _GmailscreenState extends State<Gmailscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff121315),
        drawer: Drawer(
          backgroundColor: const Color(0xff2e2f32),
          child: Column(
            children: [
              const SizedBox(
                height: 83,
                child: DrawerHeader(
                  child: Text(
                    'Gmail ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              ...List.generate(titlename.length, (index) => gmailmethod(index),),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Gmail',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          backgroundColor: Colors.grey,
          elevation: 1,
          shadowColor: Color(0xff121315),
        ),
      ),
    );
  }

  ListTile gmailmethod(int index) {
    return ListTile(
              leading: Icon(
                iconname[index],
                color: Colors.white,
                size: 29,
              ),
              title: Text(
                titlename[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            );
  }
}
