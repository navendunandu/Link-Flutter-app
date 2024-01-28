import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class SearchLawyer extends StatefulWidget {
  const SearchLawyer({super.key});

  @override
  State<SearchLawyer> createState() => _SearchLawyerState();
}

class _SearchLawyerState extends State<SearchLawyer> {
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
          title: Text("SearchLawyer",
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
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: appcolor.primary,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
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
                                          "assets/images/SearchLawyer/mySearchLawyer.png",
                                          width: 100,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " My SearchLawyer ",
                                            style: TextStyle(fontSize: 20),
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
                                          "assets/images/SearchLawyer/searchSearchLawyer.png",
                                          width: 100,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " Search SearchLawyer",
                                            style: TextStyle(fontSize: 20),
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
                                          "assets/images/SearchLawyer/MyCase.png",
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
                            ],
                          )
                        ]),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
