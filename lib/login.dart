import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:link/dashboard.dart';
import 'package:link/main.dart';
import 'package:link/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _obs_text = true;

  void redirectToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  void login() {
    print(_name.text);
    print(_password.text);

    if (_name.text == _password.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(35.0),
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
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appcolor.primary))
                ),
                controller: _name,
              ),
              SizedBox(height: 30),
              TextFormField(
                obscureText: _obs_text,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: InkWell(
                    child: Icon(Icons.remove_red_eye_outlined),
                    onTap: () {
                      setState(() {
                        _obs_text = !_obs_text;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appcolor.primary))

                ),
                controller: _password,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Forget password");
                    },
                    child: Text(
                      "Forgotten password",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: login,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromRGBO(21, 101, 192, 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: redirectToRegister,
                    child: Text(
                      "Signup now!",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
