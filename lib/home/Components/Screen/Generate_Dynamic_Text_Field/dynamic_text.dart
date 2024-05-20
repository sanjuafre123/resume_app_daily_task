import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Utils/globallist.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.person_rounded,
          size: 29,
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text(
          'Dynamic Text Field',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              text.length,
              (index) => ListTile(
                title: TextFormField(
                  controller: text[index],
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(width: 1),
                    ),
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            TextEditingController txtController =
                                TextEditingController();
                            text.add(txtController);
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          text.removeAt(index - 1);
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          skills = '';
          for (int i = 0; i < text.length; i++) {
            skills = '$skills ${text[i].text}';
          }
          setState(
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${skills}',
                    style: const TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ),
              );
            },
          );
        },
        child: const BottomAppBar(
          height: 70,
          shadowColor: Colors.black,
          elevation: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Submit',
                style: TextStyle(
                  fontSize: 26,fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
String skills = '';