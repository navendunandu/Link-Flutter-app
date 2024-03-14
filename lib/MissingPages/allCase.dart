import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_auth/firebase_auth.dart';

class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});
}

class MissingPet extends StatefulWidget {
  const MissingPet({Key? key}) : super(key: key);

  @override
  State<MissingPet> createState() => _MissingPetState();
}

class _MissingPetState extends State<MissingPet> {
  final TextEditingController _complainantNameController = TextEditingController();
  final TextEditingController _contactNumberController = TextEditingController();
  final TextEditingController _complaintDescriptionController = TextEditingController();
  String _caseCategory = "";
  String _subCaseCategory = "";
  XFile? _document;
  List<Category> _categories = [];
  Map<String, List<Category>> _subCategories = {};
  String? _selectedCategory;
  String? _selectedSubCategory;

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  Future<void> _fetchCategories() async {
    try {
      final QuerySnapshot categorySnapshot =
          await FirebaseFirestore.instance.collection('CaseType').get();

      setState(() {
        _categories = categorySnapshot.docs.map((doc) {
          final id = doc.id;
          final name = doc['CaseType'] as String;
          return Category(id: id, name: name);
        }).toList();
      });
    } catch (error) {
      print('Error fetching categories: $error');
    }
  }

  Future<void> _fetchSubCategories(String categoryId) async {
    try {
      final QuerySnapshot subCategorySnapshot = await FirebaseFirestore.instance
          .collection('SubCaseType')
          .where('CaseCategory', isEqualTo: categoryId)
          .get();

      final subCategories = subCategorySnapshot.docs.map((doc) {
        final id = doc.id;
        final name = doc['SubCaseCategory'] as String;
        return Category(id: id, name: name);
      }).toList();

      print('Sub-categories for $categoryId: $subCategories');

      setState(() {
        _subCategories[categoryId] = subCategories;
      });
    } catch (error) {
      print('Error fetching sub-categories: $error');
    }
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _document = XFile(pickedFile.path);
      });
    }
  }

 Future<void> _handleSubmit() async {
  try {
    String documentURLs = "";
    // Upload document to Firebase Storage
    if (_document != null) {
      firebase_storage.Reference storageReference = firebase_storage.FirebaseStorage.instance
          .ref('policeComplaintDocument/${_document!.name}');
      await storageReference.putFile(File(_document!.path));
      documentURLs = await storageReference.getDownloadURL();
    }

    // Get user ID
    final userId = await fetchUserId();

    // Set the selected category and sub-category values
    _caseCategory = _selectedCategory ?? "";
    _subCaseCategory = _selectedSubCategory ?? "";

    // Add police complaint to Firestore
    await FirebaseFirestore.instance.collection('PoliceComplaint').add({
      'userId': userId,
      'complainantName': _complainantNameController.text,
      'contactNumber': _contactNumberController.text,
      'documentURLs': documentURLs,
      'caseCategory': _caseCategory,
      'subCaseCategory': _subCaseCategory,
      'vStatus': 0,
      'complaintDescription': _complaintDescriptionController.text,
      'timestamp': Timestamp.now(),
    });

    // Reset form after submission
    _complainantNameController.clear();
    _contactNumberController.clear();
    _complaintDescriptionController.clear();
    setState(() {
      _document = null;
      _caseCategory = "";
      _subCaseCategory = "";
      _selectedCategory = null;
      _selectedSubCategory = null;
    });

    // Show success message
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Success'),
        content: Text('Police complaint filed successfully!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  } catch (error) {
    print("Error filing police complaint: $error");
    // Show error message
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Error'),
        content: Text('Error filing police complaint. Please try again.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

  Future<String?> fetchUserId() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      final userId = currentUser?.uid;

      // Fetch user details from Firestore
      final userSnapshot = await FirebaseFirestore.instance
          .collection('collection_user')
          .doc(userId)
          .get();

      if (userSnapshot.exists) {
        // If the user document exists, retrieve the userId field
        final userData = userSnapshot.data() as Map<String, dynamic>;
        final userId = userData['user_Id'];
        return userId;
      } else {
        throw Exception('User document does not exist');
      }
    } catch (error) {
      print('Error fetching user ID: $error');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "File Case",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: _pickImage,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: _document != null
                                  ? FileImage(File(_document!.path))
                                  : const AssetImage(
                                      "assets/images/Missing/missing_pet.png",
                                    ) as ImageProvider,
                              radius: 70,
                            ),
                            if (_document != null)
                              CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                radius: 18,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    // Handle edit image
                                  },
                                ),
                              ),
                          ],
                        ),
                        const Text(
                          "Add Image",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Name',
                          ),
                          controller: _complainantNameController,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(10),
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Mobile number',
                            hintText:
                                'Enter 10-digit mobile number of pet owner',
                          ),
                          controller: _contactNumberController,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLines: 4,
                          decoration: const InputDecoration(
                            hintText: 'case Detail',
                            labelText: "Description ",
                          ),
                          controller: _complaintDescriptionController,
                        ),
                        const SizedBox(height: 10),
                        DropdownButtonFormField<String>(
                          value: _selectedCategory,
                          hint: const Text('Select Category'),
                          onChanged: (value) {
                            setState(() {
                              _selectedCategory = value;
                              _fetchSubCategories(value!);
                              _selectedSubCategory = null;
                            });
                          },
                          items: _categories.map((category) {
                            return DropdownMenuItem<String>(
                              value: category.id,
                              child: Text(category.name),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 10),
                        if (_selectedCategory != null)
                          DropdownButtonFormField<String>(
                            value: _selectedSubCategory,
                            hint: const Text('Select Sub-Category'),
                            onChanged: (value) {
                              setState(() {
                                _selectedSubCategory = value;
                              });
                            },
                            items: _subCategories[_selectedCategory!]
                                    ?.map((subCategory) {
                                  return DropdownMenuItem<String>(
                                    value: subCategory.id,
                                    child: Text(subCategory.name),
                                  );
                                }).toList() ??
                                [],
                          ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                            onPressed: _handleSubmit,
                            child: const Text("Submit"),
                          ),
                        ),
                      ],
                    ),
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

void main() {
  runApp(const MaterialApp(
    home: MissingPet(),
  ));
}
