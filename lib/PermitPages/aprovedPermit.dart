import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class AprovedPermit extends StatefulWidget {
  const AprovedPermit({super.key});

  @override
  State<AprovedPermit> createState() => _AprovedPermitState();
}

class _AprovedPermitState extends State<AprovedPermit> {
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
          title: Text("APROVED PERMIT",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Permit/event.png",
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " Event/Function Permit ",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Permit/travel.png",
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " Transportation Permits",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Permit/sound.png",
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " Sound Permit",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Permit/construction.png",
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " Building Permit",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Permit/parade.png",
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " Parade / Procession Permit",
                                      style: TextStyle(fontSize: 16),
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
