import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/CasePages/case.dart';
import 'package:link/EmergencyPages/emergency.dart';
import 'package:link/FinePages/fine.dart';
import 'package:link/LawyerPages/lawyer.dart';
import 'package:link/main.dart';
import 'package:link/MissingPages/missing.dart';
import 'package:link/PermitPages/permit.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  void emergency() {
    print("Emergency");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: appcolor.white,
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
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
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 60, left: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "LINK",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 5),
                          ),
                        ],
                      ),
                      Row(
                        children: [Text("THE COMPLETE LEGAL SERVICE APP")],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: appcolor.secondary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 40, bottom: 40, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 70,
                          color: appcolor.white,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "User name",
                                  style: TextStyle(
                                    color: appcolor.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: TextButton(
                                  onPressed: () async {
                                    await Future.delayed(Duration(seconds: 5));
                                    emergency();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appcolor.red,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFF000000)
                                              .withOpacity(0.1),
                                          offset: Offset(3, 3),
                                          blurRadius: 0,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "EMERGENCY",
                                            style: TextStyle(
                                                color: appcolor.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text("hold for 5 seconds",
                                              style: TextStyle(fontSize: 9)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: appcolor.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Missing(),
                                        ));
                                  },
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
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Dashboard/missing.png",
                                            width: 100,
                                          ),
                                          Text("MISSING"),
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
                                          builder: (context) => Lawyer(),
                                        ));
                                  },
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
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Dashboard/lawyer.png",
                                            width: 100,
                                          ),
                                          Text("LAWYER"),
                                        ],
                                      ),
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
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Permit(),
                                        ));
                                  },
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
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Dashboard/permit.png",
                                            width: 100,
                                          ),
                                          Text("PERMIT"),
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
                                          builder: (context) => const Fine(),
                                        ));
                                  },
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
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Dashboard/fine.png",
                                            width: 100,
                                          ),
                                          Text("FINE"),
                                        ],
                                      ),
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
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Case(),
                                        ));
                                  },
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
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Dashboard/fileCase.png",
                                            width: 100,
                                          ),
                                          Text("CASE"),
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
                                          builder: (context) =>
                                              const Emergency(),
                                        ));
                                  },
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
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/Dashboard/alert-em.png",
                                            width: 100,
                                          ),
                                          Text("EMERGENCY"),
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
              Container(
                decoration: BoxDecoration(color: appcolor.secondary),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
