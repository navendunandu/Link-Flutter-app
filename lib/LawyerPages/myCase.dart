import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:link/main.dart';

class MyCase extends StatefulWidget {
  const MyCase({Key? key}) : super(key: key);

  @override
  State<MyCase> createState() => _MyCaseState();
}

class _MyCaseState extends State<MyCase> {
  bool loading = true;
  List<dynamic> cases = [];
  dynamic lawyer;

  @override
  void initState() {
    super.initState();
    fetchCases();
  }

  Future<void> fetchCases() async {
    try {
      // Fetching current user's ID
      String? userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) {
        print("Error: Current user not found.");
        return;
      }

      // Fetching user data to get user_Id
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('collection_user')
          .doc(userId)
          .get();
      String? user_Id = userSnapshot['user_Id'];
      if (user_Id == null) {
        print("Error: User_Id not found for current user.");
        return;
      }

      // Fetching cases data
      QuerySnapshot casesSnapshot = await FirebaseFirestore.instance
          .collection('PoliceComplaint')
          .where('userId', isEqualTo: user_Id)
          .get();
      print("Fetched cases data");

      List<dynamic> casesData = casesSnapshot.docs.map((doc) {
        return {
          'id': doc.id,
          'caseCategory': doc['caseCategory'],
          'subCaseCategory': doc['subCaseCategory'],
          'timestamp': doc['timestamp'].toDate().toString(),
          'lawyer':
              doc['lawyer'], // Assuming 'lawyer' field contains the lawyer's ID
        };
      }).toList();
      print("Cases data mapped: $casesData");

      // Fetching case type data
      QuerySnapshot caseTypeSnapshot =
          await FirebaseFirestore.instance.collection('CaseType').get();
      print("Fetched case type data");

      Map<String, dynamic> caseTypeData = {};
      caseTypeSnapshot.docs.forEach((doc) {
        caseTypeData[doc.id] = doc.data();
      });
      print("Case type data: $caseTypeData");

      // Fetching sub case type data
      QuerySnapshot subCaseTypeSnapshot =
          await FirebaseFirestore.instance.collection('SubCaseType').get();
      print("Fetched sub case type data");

      Map<String, dynamic> subCaseTypeData = {};
      subCaseTypeSnapshot.docs.forEach((doc) {
        subCaseTypeData[doc.id] = doc.data();
      });
      print("Sub case type data: $subCaseTypeData");

      setState(() {
        cases = casesData.map((data) {
          return {
            ...data,
            'cat': caseTypeData[data['caseCategory']],
            'subcat': subCaseTypeData[data['subCaseCategory']],
          };
        }).toList();
        loading = false;
      });

      print("Cases data processed: $cases");

      // Fetching lawyer data for each case
      casesData.forEach((item) => fetchLawyer(item['lawyer']));
    } catch (error) {
      print("Error fetching cases: $error");
      setState(() {
        loading = false;
      });
    }
  }

  Future<void> fetchLawyer(String? lawyerId) async {
    if (lawyerId != null) {
      try {
        // Query the lawyer collection based on the userId
        QuerySnapshot lawyerSnapshot = await FirebaseFirestore.instance
            .collection('lawyer_collection')
            .where('userId', isEqualTo: lawyerId)
            .get();

        // Check if any documents are found
        if (lawyerSnapshot.docs.isNotEmpty) {
          // Get the first document (assuming there's only one lawyer for each userId)
          DocumentSnapshot lawyerDoc = lawyerSnapshot.docs.first;

          // Get the lawyer data
          dynamic lawyerData = lawyerDoc.data();

          setState(() {
            lawyer = lawyerData;
          });
        } else {
          // No lawyer found with the provided lawyerId (userId)
          setState(() {
            lawyer = null;
          });
          print('No lawyer found with userId: $lawyerId');
        }
      } catch (error) {
        print("Error fetching lawyer: $error");
      }
    } else {
      // lawyerId is null, reset lawyer data
      setState(() {
        lawyer = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Debug print fetched data
    print("Cases: $cases");
    print("Lawyer: $lawyer");

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
        title: Text("Cases",
            style: TextStyle(color: appcolor.white, fontSize: 30)),
      ),
      body: Container(
        color: appcolor.secondary,
        child: Container(
           decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: appcolor.white,
                ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : cases.isEmpty
                    ? const Center(
                        child: Text("No cases filed yet"),
                      )
                    : ListView.builder(
                        itemCount: cases.length,
                        itemBuilder: (context, index) {
                          dynamic item = cases[index];
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['cat']['CaseType'],
                                    style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8.0),
                                  const SizedBox(height: 8.0),
                                  Text("ID: ${item['id']}"),
                                  Text(
                                      "Category: ${item['subcat']['SubCaseCategory']}"),
                                  Text("Filed on: ${item['timestamp']}"),
                                  if (lawyer != null)
                                    Text("Lawyer: ${lawyer['full_name']}")
                                  else
                                    const Text("Lawyer not appointed"),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
          ),
        ),
      ),
    );
  }
}
