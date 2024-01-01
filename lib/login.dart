import 'package:flutter/material.dart';
import 'package:link/dashboard.dart';
import 'package:link/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _obs_text = true;

  void redirectToRegister() {
    // Using MaterialPageRoute
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              RegisterScreen()), // Replace RegisterScreen with the actual name of your registration screen
    );

    // If you have named routes, you can use Navigator.pushNamed
    // Navigator.pushNamed(context, '/register');
  }

  void login() {
    print(_name.text);
    print(_password.text);

    if (_name.text == _password.text) {
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=>Dashboard()));
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false, // Add this line to disable the leading icon

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
                    fontSize: 40),
              ),
              Text(
                "the complete legal app",
                style: TextStyle(color: Colors.black54, fontSize: 17),
              )
            ],
          ),
        ),
        toolbarHeight: 125,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Container(
            // color: Colors.deepOrange,
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(hintText: "Username"),
                            controller: _name,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: _obs_text,
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffix: InkWell(
                                  child: Icon(Icons.remove_red_eye_outlined),
                                  onTap: () {
                                    _obs_text = !_obs_text;
                                    setState(() {});
                                  },
                                )),
                            controller: _password,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    print("Forget password");
                                  },
                                  child: Text("Forgoten password",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w800))),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    login();
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromRGBO(21, 101, 192, 1)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "dont have an account ?  ",
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
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
