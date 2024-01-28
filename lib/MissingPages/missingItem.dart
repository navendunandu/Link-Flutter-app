import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:link/main.dart';

class MissingItem extends StatefulWidget {
  const MissingItem({Key? key}) : super(key: key);

  @override
  State<MissingItem> createState() => _MissingItemState();
}

class _MissingItemState extends State<MissingItem> {
  void Imgeinput() {
    print("Image: ");
  }

  DateTime? _missingDate;
  XFile? _selectedImage;
  String? _imageUrl;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _discription = TextEditingController();
  final TextEditingController _lastLocation = TextEditingController();
  final TextEditingController _missingDateController = TextEditingController();

  Future<void> _selectMissingDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _missingDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _missingDate) {
      setState(() {
        _missingDate = picked;
        _missingDateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = XFile(pickedFile.path);
      });
    }
  }

  void submit() {
    print("Name: " + _name.text);
    print("Number: " + _contact.text);
    print("DOB: " + _dob.text);
    print("Description: " + _discription.text);
    print("Missing: " + _missingDateController.text);
    print("Last Location: " + _lastLocation.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "MissingItem",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        _pickImage();
                      },
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                backgroundImage: _selectedImage != null
                                    ? FileImage(File(_selectedImage!.path))
                                    : _imageUrl != null
                                        ? NetworkImage(_imageUrl!)
                                        : const AssetImage(
                                            "assets/images/Missing/missingItem.png",
                                          ) as ImageProvider,
                                radius: 70,
                              ),
                              if (_selectedImage != null || _imageUrl != null)
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  radius: 18,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      // Handle edit image
                                    },
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Missing item',
                            ),
                            controller: _name,
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              LengthLimitingTextInputFormatter(10),
                            ],
                            decoration: const InputDecoration(
                              labelText: 'Owners mobile number',
                              hintText:
                                  'Enter 10-digit mobile number of pet owner',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null; // Return null if the input is valid
                            },
                            controller: _contact,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _dob,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2)
                            ],
                            decoration: const InputDecoration(
                              labelText: 'Category',
                              hintText: 'Category of Item',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            maxLines: 4,
                            decoration: const InputDecoration(
                              hintText: 'describe the missing Item',
                              labelText: "Description",
                            ),
                            controller: _discription,
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              _selectMissingDate(context);
                            },
                            child: AbsorbPointer(
                              child: TextFormField(
                                keyboardType: TextInputType.datetime,
                                controller: _missingDateController,
                                decoration: const InputDecoration(
                                  labelText: "Missing from",
                                  hintText:
                                      'date from which the person is missing',
                                ),
                                validator: (value) {
                                  if (_missingDate == null) {
                                    return 'Please select the date from which the person has gone missing';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Last known location of the person',
                              labelText: 'Last location',
                            ),
                            controller: _lastLocation,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: appcolor.primary,
                                foregroundColor: appcolor.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                submit();
                              },
                              child: const Text("Submit"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
