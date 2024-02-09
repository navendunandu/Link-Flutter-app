import 'package:flutter/material.dart';
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
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Padding(
      //     padding: const EdgeInsets.all(35.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           "Welcome To Link",
      //           style: TextStyle(
      //             color: const Color.fromRGBO(21, 101, 192, 1),
      //             fontWeight: FontWeight.w800,
      //             fontSize: 40,
      //           ),
      //         ),
      //         Text(
      //           "the complete legal app",
      //           style: TextStyle(color: Colors.black54, fontSize: 17),
      //         ),
      //       ],
      //     ),
      //   ),
      //   toolbarHeight: 125,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Wlelcome To",
                style: TextStyle(
                  color: const Color.fromRGBO(21, 101, 192, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 50,
                ),
              ),
              Text(
                "Link",
                style: TextStyle(
                  color: const Color.fromRGBO(21, 101, 192, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 160,
                ),
              ),
              Text("The Complete Legal App",
                  style: TextStyle(fontSize: 32, color: appcolor.text2)),
              SizedBox(
                height: 100,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appcolor.primary),
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
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
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appcolor.primary),
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        "New Here ? ",
                        style: TextStyle(fontSize: 17),
                      ),
                      GestureDetector(
                        onTap: redirectToRegister,
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: login,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
