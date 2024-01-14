import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MissingPerson extends StatefulWidget {
  const MissingPerson({Key? key}) : super(key: key);

  @override
  State<MissingPerson> createState() => _MissingPersonState();
}

class _MissingPersonState extends State<MissingPerson> {
  void Imgeinput() {
    print("Image: ");
  }

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectMissingDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  final TextEditingController _name = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _missingDate = TextEditingController();
  final TextEditingController _discription = TextEditingController();
  final TextEditingController _lastLocation = TextEditingController();

  void submit() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue, // Replace with your app color
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white, // Replace with your app color
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
          decoration:
              BoxDecoration(color: Colors.blue), // Replace with your app color
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white, // Replace with your app color
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Imgeinput();
                    },
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Imgeinput();
                          },
                          icon: Image.asset(
                            "assets/images/Missing/missing_report.png",
                            width: 100,
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
                                  hintText: 'Enter 10-digit mobile number of missing person',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _selectDate(context);
                                },
                                child: Expanded(
                                  child: AbsorbPointer(
                                    child: Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.datetime,
                                        controller: _selectedDate != null
                                            ? TextEditingController(
                                                text:
                                                    "${_selectedDate!.toLocal()}"
                                                        .split(' ')[0])
                                            : TextEditingController(),
                                        decoration: InputDecoration(
                                          labelText: 'Date of Birth',
                                          hintText: 'Date of Birth',
                                        ),
                                        validator: (value) {
                                          if (_selectedDate == null) {
                                            return 'Please select a date of birth of missing person';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  _selectMissingDate(context);
                                },
                                child: Expanded(
                                  child: AbsorbPointer(
                                    child: Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.datetime,
                                        controller: _selectedDate != null
                                            ? TextEditingController(
                                                text:
                                                    "${_selectedDate!.toLocal()}"
                                                        .split(' ')[0])
                                            : TextEditingController(),
                                        decoration: InputDecoration(
                                          labelText: "Missing from",
                                          hintText: 'date from which the person is missing',
                                        ),
                                        validator: (value) {
                                          if (_selectedDate == null) {
                                            return 'Please select the date from which the persoin has gone missing';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'describe the missing person',
                                  labelText: "Description",
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Last known location of the person', 
                                  labelText: 'Last location',
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: () {
                                    submit();
                                  },
                                  child: Text("Submit")),
                            ],
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
