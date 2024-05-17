import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app_daily_task/Utils/globallist.dart';
import 'package:resume_app_daily_task/home/Components/Screen/image_picker/img_picker.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtName = TextEditingController();
    TextEditingController txtSurname = TextEditingController();
    TextEditingController txtPhone = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey();

    ImagePicker imagePicker = ImagePicker();
    File? fileImage;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.person,
          size: 30,
        ),
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Information',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage:
                        (fileImage != null) ? FileImage(fileImage!) : null,
                    radius: 60,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () async {
                          XFile? xFile = await imagePicker.pickImage(
                              source: ImageSource.camera);

                          setState(() {
                            fileImage = File(xFile!.path);
                          });
                        },
                        icon: const Icon(
                          Icons.camera_alt_rounded,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          XFile? xfileImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);

                          setState(() {
                            fileImage = File(xfileImage!.path);
                          });
                        },
                        icon: const Icon(
                          Icons.image,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: txtName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Value must be required';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: Colors.blue,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: txtSurname,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Value must be required';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Surname',
                              labelStyle: const TextStyle(
                                color: Colors.blue,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: txtPhone,
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Value must be required';
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'Phone',
                            labelStyle: const TextStyle(
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Gender :',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Male',
                        groupValue: gender,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                      const Text(
                        'Male',
                        style: TextStyle(fontSize: 16),
                      ),
                      Radio(
                        value: 'Female',
                        groupValue: gender,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                      const Text(
                        'female',
                        style: TextStyle(fontSize: 16),
                      ),
                      Radio(
                        value: 'Other',
                        groupValue: gender,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                      const Text(
                        'Other',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
