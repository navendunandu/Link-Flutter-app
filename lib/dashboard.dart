import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.settings,
            size: 40,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: appcolor.secondary),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 70,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "User name",
                                style: TextStyle(
                                    color: appcolor.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: appcolor.secondary),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20),
                          topStart: Radius.circular(20)),
                      color: appcolor.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/permit.png",
                                          width: 100,
                                        ),
                                        Text("data1"),
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/fine.png",
                                          width: 100,
                                        ),
                                        Text("data2"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/calender.png",
                                          width: 100,
                                        ),
                                        Text("data3"),
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/fileCase.png",
                                          width: 100,
                                        ),
                                        Text("data4"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/lawyer.png",
                                          width: 100,
                                        ),
                                        Text("data5"),
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/pasport.png",
                                          width: 100,
                                        ),
                                        Text("data6"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/alert-em.png",
                                          width: 100,
                                        ),
                                        Text("data7"),
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
                                          offset: Offset(0, 2))
                                    ],
                                    color: appcolor.white,
                                    // border: Border.all(
                                    //     color: appcolor.text2, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/missing.png",
                                          width: 100,
                                        ),
                                        Text("data8"),
                                      ],
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
            ],
          ),
        )),
      ),
    );
  }
}
