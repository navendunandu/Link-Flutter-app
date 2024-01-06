import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class Fine extends StatefulWidget {
  const Fine({super.key});

  @override
  State<Fine> createState() => _FineState();
}

class _FineState extends State<Fine> {
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
            Text("Fine", style: TextStyle(color: appcolor.white, fontSize: 30)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("PAID FINE",style: TextStyle(fontWeight: FontWeight.w700,color: appcolor.primary)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("No outstanding fine",
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
                                    "assets/images/Fine/OverSpeed.png",
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
                                            "Over speed",
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
                                    "assets/images/Fine/helmet.png",
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
                                            "No Helmet",
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
                                    "assets/images/Fine/redLight.png",
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
                                            "Red Light",
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
                                    "assets/images/Fine/WrecklessDriving.png",
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
                                            "WrecklessDriving",
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
                                    "assets/images/Fine/NoMask.png",
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
                                            "No Mask ",
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
                      ),Padding(
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
                                    "assets/images/Fine/NoParking.png",
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
                                            "No Parking ",
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
                      ),Padding(
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
                                    "assets/images/Fine/NoSmoking.png",
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
                                            "Public Smoking ",
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
                      ),Padding(
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
                                    "assets/images/Fine/Littering.png",
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
                                            "Littering ",
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
                      ),Padding(
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
                                    "assets/images/Fine/NoAlcohol.png",
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
                                            "Alcohol ",
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
                                    "assets/images/Fine/Noise.png",
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
                                            "Noise Pollution",
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
