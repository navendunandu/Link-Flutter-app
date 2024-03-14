import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyLawyer extends StatefulWidget {
  const MyLawyer({Key? key}) : super(key: key);

  @override
  _MyLawyerState createState() => _MyLawyerState();
}

class _MyLawyerState extends State<MyLawyer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> _lawyers = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    fetchLawyers();
  }

Future<void> fetchLawyers() async {
  try {
    final currentUser = _auth.currentUser;
    if (currentUser != null) {
      final uid = currentUser.uid;
      print('Current User ID: $uid');
      
      final lawyerConnectionsRef = _firestore.collection('Collection_lawyer_connection');
      final lawyerConnectionsSnapshot = await lawyerConnectionsRef.get();
      print('Lawyer Connections Snapshot: $lawyerConnectionsSnapshot');

      final lawyerConnections = lawyerConnectionsSnapshot.docs
          .where((doc) => doc['userID'] == uid && doc['cStatus'] == 1)
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
      print('Filtered Lawyer Connections: $lawyerConnections');

      final lawyersDetails = <Map<String, dynamic>>[];
      for (final connection in lawyerConnections) {
        final lawyerId = connection['lawyerID'];
        print('Fetching details for Lawyer ID: $lawyerId');
        
        final lawyerSnapshot = await _firestore.collection('lawyer_collection').where('userId', isEqualTo: lawyerId).get();
        final lawyerData = lawyerSnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).firstOrNull;
        print('Lawyer Data Snapshot: $lawyerData');
        
        if (lawyerData != null) { // Check if data exists
          lawyersDetails.add({
            'id': lawyerSnapshot.docs.first.id,
            ...lawyerData,
          });
        }
      }
      print('Lawyers Details: $lawyersDetails');

      final specializationRef = _firestore.collection('Lawyer_Category');
      final specializationSnapshot = await specializationRef.get();
      print('Specialization Snapshot: $specializationSnapshot');

      final specializationMap = Map.fromEntries(specializationSnapshot.docs
          .map((doc) => MapEntry(doc.id, doc.data() as Map<String, dynamic>)));
      print('Specialization Map: $specializationMap');

      final combinedLawyers = lawyersDetails
          .map((lawyer) => {
                ...lawyer,
                'catName': specializationMap[lawyer['specialization']] ?? {},
              })
          .toList();
      print('Combined Lawyers: $combinedLawyers');

      setState(() {
        _lawyers = combinedLawyers;
        _loading = false;
      });
    }
  } catch (error) {
    print('Error fetching lawyers: $error');
    setState(() {
      _loading = false;
    });
  }
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Lawyers'),
      ),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _lawyers.length,
              itemBuilder: (context, index) {
                final lawyer = _lawyers[index];
                return ListTile(
                  title: Text(lawyer['full_name']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Area: ${lawyer['catName']['categoryName']}'),
                      Text('Qualification: ${lawyer['qualification']}'),
                      Text('ID: ${lawyer['userId']}'),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(lawyer['profile_picture'] ?? ''),
                  ),
                );
              },
            ),
    );
  }
}
