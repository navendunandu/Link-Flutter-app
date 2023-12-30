import 'package:flutter/material.dart';
import 'package:link/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _aadharNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();

  void redirectToLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  void register() {
    print("Registering...");
    print("Full Name: ${_fullNameController.text}");
    print("Email: ${_emailController.text}");
    print("Password: ${_passwordController.text}");
    print("Phone Number: ${_phoneNumberController.text}");
    print("Date of Birth: ${_dobController.text}");
    print("Gender: ${_genderController.text}");
    print("Aadhar Number: ${_aadharNumberController.text}");
    print("Address: ${_addressController.text}");
    print("District: ${_districtController.text}");
    print("Place: ${_placeController.text}");
    print("Pin Code: ${_pincodeController.text}");
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(labelText: "Full Name"),
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
              TextFormField(
                controller: _genderController,
                decoration: InputDecoration(labelText: "Gender"),
              ),
              SizedBox(height: 16),
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
              TextFormField(
                controller: _districtController,
                decoration: InputDecoration(labelText: "District"),
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color.fromRGBO(21, 101, 192, 1)),
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
    );
  }
}
