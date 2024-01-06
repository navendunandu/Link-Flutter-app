import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class Case extends StatefulWidget {
  const Case({super.key});

  @override
  State<Case> createState() => _CaseState();
}

class _CaseState extends State<Case> {
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
        title:
            Text("Case", style: TextStyle(color: appcolor.white, fontSize: 30)),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: appcolor.secondary),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: appcolor.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                    
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("No Case",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: appcolor.text2)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/criminal.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Criminal",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/Civil.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Civil",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/FamilyLaw.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Family Law",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/CivilRights.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Civil Rights",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/Imigration.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Imigration",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/IPR.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "IPR ",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: appcolor.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Case/Will.png",
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Real Estate ",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Kl 1 A 1111",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text(
                                            " Amount : ",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
