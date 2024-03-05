import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/MissingPages/missingItem.dart';
import 'package:link/MissingPages/missingPerson.dart';
import 'package:link/MissingPages/missingPet.dart';
import 'package:link/main.dart';

class Missing extends StatefulWidget {
  const Missing({super.key});

  @override
  State<Missing> createState() => _MissingState();
}

class _MissingState extends State<Missing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: appcolor.text,
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
          title: Text("MISSING PERSON",
              style: TextStyle(color: appcolor.white, fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: appcolor.text),
            child: Container(
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MissingPerson(),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                    offset: Offset(0, 2),
                                  )
                                ],
                                color: appcolor.text,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.account_box_rounded,color: appcolor.white,size: 100,),
                                        Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            Text(
                                              " Missing Person",
                                              style: TextStyle(fontSize: 20,color: appcolor.white),
                                            ),
                                          ],
                                        ),
                                      ],
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MissingPet(),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                    offset: Offset(0, 2),
                                  )
                                ],
                                color: appcolor.text,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.pets_sharp,color: appcolor.white,size: 100,),
                                        Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            Text(
                                              " Missing Pet",
                                              style: TextStyle(fontSize: 20,color: appcolor.white),
                                            ),
                                          ],
                                        ),
                                      ],
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MissingItem(),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                    offset: Offset(0, 2),
                                  )
                                ],
                                color: appcolor.text,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.wallet,color: appcolor.white,size: 100,),
                                        Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            Text(
                                              " Missing Item",
                                              style: TextStyle(fontSize: 20,color: appcolor.white),
                                            ),
                                          ],
                                        ),
                                      ],
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
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 7,
                                    spreadRadius: 3,
                                    offset: Offset(0, 2),
                                  )
                                ],
                                color: appcolor.text,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.search,color: appcolor.white,size: 100,),
                                        Row(
                                          children: [
                                            SizedBox(width: 30,),
                                            Text(
                                              " Report Found",
                                              style: TextStyle(fontSize: 20,color: appcolor.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),                        SizedBox(height: 10,),

                      ],
                    )
                  ]),
                )),
          ),
        ));
  }
}