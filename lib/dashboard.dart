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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 250,
            automaticallyImplyLeading: false,
            pinned: false, 
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LINK",
                  style: TextStyle(fontSize: 120, fontWeight: FontWeight.w600, color: appcolor.primary),
                ),
                SizedBox(height: 10),
                Text(
                  "THE COMPLETE LEGAL SERVICE APP",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400 ,color: appcolor.text2),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                      padding: const EdgeInsets.only(top: 40, bottom: 40, right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 60,
                            color: appcolor.white,
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "User name",
                                    style: TextStyle(
                                      color: appcolor.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
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
                                            color: Color(0xFF000000).withOpacity(0.1),
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
                                              style: TextStyle(color: appcolor.white, fontWeight: FontWeight.w600),
                                            ),
                                            Text("hold for 5 seconds", style: TextStyle(fontSize: 9)),
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
                            SizedBox(height: 30),
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
                                        ),
                                      );
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
                                          ),
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
                                        ),
                                      );
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
                                          ),
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
                                        ),
                                      );
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
                                          ),
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
                                        ),
                                      );
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
                                          ),
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
                                        ),
                                      );
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
                                          ),
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
                                          builder: (context) => const Emergency(),
                                        ),
                                      );
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
                                          ),
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
                        height: 22,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
