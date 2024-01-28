import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class MyLawyer extends StatefulWidget {
  const MyLawyer({super.key});

  @override
  State<MyLawyer> createState() => _MyLawyerState();
}

class _MyLawyerState extends State<MyLawyer> {
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
          title: Text("MyLawyer",
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
                                  Icon(Icons.account_circle , size: 80),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "LawyerNAme ",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                                                          Text("COurt"),
                                        Text("LawyerID "),
                                        
                                      ],
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
