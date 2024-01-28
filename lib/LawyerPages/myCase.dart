import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class MyCase extends StatefulWidget {
  const MyCase({super.key});

  @override
  State<MyCase> createState() => _MyCaseState();
}

class _MyCaseState extends State<MyCase> {
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
          title: Text("MyCase",
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
                        SizedBox(height: 10,),
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
                                      "assets/images/MyCase/myMyCase.png",
                                      width: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        " My MyCase ",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => const Fine(),
                            //       ));
                            // },
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
                                      "assets/images/MyCase/searchMyCase.png",
                                      width: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        " Search MyCase",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => const Fine(),
                            //       ));
                            // },
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
                                      "assets/images/MyCase/MyCase.png",
                                      width: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        " My Case",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
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
