import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class MissingPerson extends StatefulWidget {
  const MissingPerson({super.key});

  @override
  State<MissingPerson> createState() => _MissingPersonState();
}

class _MissingPersonState extends State<MissingPerson> {

void Imgeinput(){
  print("Image: ");
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: appcolor.secondary,
          surfaceTintColor: appcolor.secondary,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: appcolor.accent,
              size: 30,
            ),
          ),
          title: Text("MissingPerson",
              style: TextStyle(color: appcolor.white, fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: appcolor.secondary),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: appcolor.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => const Permit(),
                            //       ));
                            // },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " My MissingPerson ",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                )),
          ),
        ));
  }
}
