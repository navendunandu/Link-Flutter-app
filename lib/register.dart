import 'package:flutter/material.dart';
import 'package:link/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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

  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _aadharNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();

  String? gender;
  String? selectedDistrict;

  void redirectToLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  void register() {
  print("Registering...");
  print("Name: ${_firstName.text} ${_lastName.text}");
  print("Email: ${_emailController.text}");
  print("Password: ${_passwordController.text}");
  print("Phone Number: ${_phoneNumberController.text}");
  print("Date of Birth: ${_dobController.text}");
  print("Gender: $gender");
  print("Aadhar Number: ${_aadharNumberController.text}");
  print("Address: ${_addressController.text}");
  print("District: $selectedDistrict");
  print("Place: ${_placeController.text}");
  print("Pin Code: ${_pincodeController.text}");

  // Clear all the controllers
  _firstName.clear();
  _lastName.clear();
  _emailController.clear();
  _passwordController.clear();
  _phoneNumberController.clear();
  _dobController.clear();
  _aadharNumberController.clear();
  _addressController.clear();
  _districtController.clear();
  _placeController.clear();
  _pincodeController.clear();

  setState(() {
    gender = null;
    selectedDistrict = null;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome To Link",
                style: TextStyle(
                  color: const Color.fromRGBO(21, 101, 192, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              Text(
                "the complete legal app",
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            ],
          ),
        ),
        toolbarHeight: 125,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _firstName,
                        decoration: InputDecoration(labelText: "Full Name"),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextFormField(
                      controller: _lastName,
                      decoration: InputDecoration(labelText: "Last name"),
                    ))
                  ],
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(labelText: "Phone Number"),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _dobController,
                  decoration: InputDecoration(labelText: "Date of Birth"),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text("Gender : "),
                    SizedBox(
                      width: 28,
                    ),
                    Text("Male"),
                    Radio(
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        }),
                    Text("Femlae"),
                    Radio(
                        value: "Female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        }),
                    Text("Other"),
                    Radio(
                        value: "Other",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        })
                  ],
                ),
                TextFormField(
                  controller: _aadharNumberController,
                  decoration: InputDecoration(labelText: "Aadhar Number"),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(labelText: "Address"),
                ),
                
                SizedBox(height: 16),
                Row(
                  children: [
                    Text("District"),SizedBox(width: 15,),
                    Flexible(
                      child: DropdownButtonFormField<String>(
                        value: selectedDistrict,
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
                    ),
                  ],
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _placeController,
                  decoration: InputDecoration(labelText: "Place"),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _pincodeController,
                  decoration: InputDecoration(labelText: "Pin Code"),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    register();
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(21, 101, 192, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "already joined ? ",
                      style: TextStyle(fontSize: 17),
                    ),
                    GestureDetector(
                      onTap: redirectToLogin,
                      child: Text(
                        "Login ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
