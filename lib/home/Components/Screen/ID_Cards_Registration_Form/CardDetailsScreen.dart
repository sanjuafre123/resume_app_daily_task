import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Utils/globallist.dart';
import 'package:resume_app_daily_task/home/Components/Screen/image_picker/img_picker.dart';

class CardDetailScreen extends StatefulWidget {
  const CardDetailScreen({super.key});

  @override
  State<CardDetailScreen> createState() => _CardDetailScreenState();
}

class _CardDetailScreenState extends State<CardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black87,
        centerTitle: true,
        title: const Text(
          'Id Card',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade600,
                  ),
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xff5AB2FF),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 16),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 100,
                    backgroundImage:
                        (fileImage != null) ? FileImage(fileImage!) : null,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Text(
              'Name : ',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
            title: Text(
              '$firstName $lastName',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Text(
              'D.O.B : ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            title: Text(
              dub,
              style: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Text(
              'Contact : ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            title: Text(
              phoneNumber,
              style: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
