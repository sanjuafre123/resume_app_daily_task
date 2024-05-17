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
          Icons.account_circle,
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
                    radius: 60,
                    backgroundImage:
                        (fileImage != null) ? FileImage(fileImage!) : null,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.camera);

                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: const Icon(
                          Icons.camera_alt_rounded,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);

                          setState(() {
                            fileImage = File(xFileImage!.path);
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
                            hintText: 'Ex:- Sanju',
                            labelText: 'First Name',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
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
                              labelText: 'Last name',
                              hintText: 'Ex:- Afre',
                              labelStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLength: 10,
                          controller: txtPhone,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Value must be required';
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            hintText: 'Ex:- 9173074442',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
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
                            fontSize: 20,
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
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          'Hobby :',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  buildCheckboxListTile(index: 0),
                  buildCheckboxListTile(index: 1),
                  buildCheckboxListTile(index: 2),
                  buildCheckboxListTile(index: 3),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          firstName = txtName.toString();
          lastName = txtSurname.toString();
          phoneNumber = txtPhone.toString();
          Navigator.of(context).pushNamed('/CardDetail');
        },
        child: const BottomAppBar(
          height: 60,
          elevation: 6,
          shadowColor: Colors.black,
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  CheckboxListTile buildCheckboxListTile({required int index}) {
    return CheckboxListTile(
      value: hobby[index],
      onChanged: (value) {
        setState(() {
          hobby[index] = value!;
        });
      },
      title: Text(hobbyname[index]),
    );
  }
}
