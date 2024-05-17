import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imgpicker extends StatefulWidget {
  const imgpicker({super.key});

  @override
  State<imgpicker> createState() => _imgpickerState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _imgpickerState extends State<imgpicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'image Picker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
                image: (fileImage != null) ? DecorationImage(
                  fit: BoxFit.cover,
                  image: FileImage(fileImage!),):null
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () async {
                  XFile? xFileImage =
                  await imagePicker.pickImage(source: ImageSource.camera);

                  setState(() {
                    fileImage = File(xFileImage!.path);
                  });
                },
                icon: const Icon(
                  Icons.camera_alt,
                  size: 60,
                ),
              ),
              IconButton(
                onPressed: () async {
                  XFile? xFileImage =
                  await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    fileImage = File(xFileImage!.path);
                  });
                },
                icon: Icon(
                  Icons.image,
                  size: 60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            alignment: Alignment.center,
            height: 48,
            width: 330,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Text(
              'Upload Me',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
