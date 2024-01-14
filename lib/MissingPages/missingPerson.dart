import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:link/main.dart';

class MissingPerson extends StatefulWidget {
  const MissingPerson({Key? key}) : super(key: key);

  @override
  State<MissingPerson> createState() => _MissingPersonState();
}

class _MissingPersonState extends State<MissingPerson> {
  void Imgeinput() {
    print("Image: ");
  }

  DateTime? _dob;
  DateTime? _missingDate;
  XFile? _selectedImage;
  String? _imageUrl;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _discription = TextEditingController();
  final TextEditingController _lastLocation = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _missingDateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dob ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _dob) {
      setState(() {
        _dob = picked;
        _dobController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

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
    print("DOB: " + _dobController.text);
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
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          "MissingPerson",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Container(
            decoration: BoxDecoration(
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
                  SizedBox(height: 10),
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
                                          "assets/images/Missing/missing_report.png")
                                  as ImageProvider,
                              radius: 70,
                            ),
                            if (_selectedImage != null || _imageUrl != null)
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 18,
                                child: IconButton(
                                  icon: Icon(
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
                        // IconButton(
                        //   onPressed: () {
                        //     Imgeinput();
                        //   },
                        //   icon: Image.asset(
                        //     "assets/images/Missing/missing_report.png",
                        //     width: 100,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                          ),
                          controller: _name,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(10),
                          ],
                          decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            hintText:
                                'Enter 10-digit mobile number of missing person',
                          ),
                          controller: _contact,
                        ),
                        GestureDetector(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: AbsorbPointer(
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _dobController,
                              decoration: InputDecoration(
                                labelText: 'Date of Birth',
                                hintText: 'Date of Birth',
                              ),
                              validator: (value) {
                                if (_dob == null) {
                                  return 'Please select a date of birth of missing person';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            hintText: 'describe the missing person',
                            labelText: "Description",
                          ),
                          controller: _discription,
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            _selectMissingDate(context);
                          },
                          child: AbsorbPointer(
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _missingDateController,
                              decoration: InputDecoration(
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
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Last known location of the person',
                            labelText: 'Last location',
                          ),
                          controller: _lastLocation,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appcolor.primary,
                              foregroundColor: appcolor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                            onPressed: () {
                              submit();
                            },
                            child: Text("Submit"),
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
    );
  }
}
