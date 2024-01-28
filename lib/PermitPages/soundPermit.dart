import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:link/main.dart';

class SoundPermit extends StatefulWidget {
  const SoundPermit({Key? key}) : super(key: key);

  @override
  State<SoundPermit> createState() => _SoundPermitState();
}

class _SoundPermitState extends State<SoundPermit> {
  List<String> district = [
    "Thiruvananthapuram",
    "Kollam",
    "Pathanamthitta",
    "Alappuzha",
    "Kottayam",
    "Idukki",
    "Ernakulam",
    "Thrissur",
    "Palakkad",
    "Malappuram",
    "Kozhikode",
    "Wayanad",
    "Kannur",
    "Kasaragod"
  ];

  DateTime? _start;
  DateTime? _end;
  String? selectedDistrict;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _discription = TextEditingController();
  final TextEditingController _lastLocation = TextEditingController();
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _start ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _start) {
      setState(() {
        _start = picked;
        _startController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  Future<void> _selectMissingDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _end ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _end) {
      setState(() {
        _end = picked;
        _endController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  void submit() {
    print("Name: " + _name.text);
    print("Number: " + _contact.text);
    print("DOB: " + _startController.text);
    print("Description: " + _discription.text);
    print("Missing: " + _endController.text);
    print("Last Location: " + _lastLocation.text);

    setState(() {
      selectedDistrict = null;
    });
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
          "SoundPermit",
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "0-9999",
                      labelText: "number of attendies"
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: AbsorbPointer(
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _startController,
                              decoration: InputDecoration(
                                labelText: 'SoundPermit starting dayte',
                              ),
                              validator: (value) {
                                if (_start == null) {
                                  return 'Please select a date';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            _selectMissingDate(context);
                          },
                          child: AbsorbPointer(
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _endController,
                              decoration: InputDecoration(
                                labelText: "SoundPermit ending date",
                              ),
                              validator: (value) {
                                if (_end == null) {
                                  return 'Please select the date from which the person has gone missing';
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
                        Text("Location"),
                        DropdownButtonFormField<String>(
                          value: selectedDistrict,
                          hint: Text("Select district"),
                          items: district.map((String district) {
                            return DropdownMenuItem<String>(
                              value: district,
                              child: Text(district),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              selectedDistrict = value!;
                            });
                          },
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
