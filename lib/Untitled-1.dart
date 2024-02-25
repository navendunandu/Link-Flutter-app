// Future<void> register() async {
//     // Implement your registration logic here
//     print('Name: ${_nameController.text}');
//     print('Email: ${_emailController.text}');
//     print('Contact: ${_contactController.text}');
//     print('Address: ${_addressController.text}');
//     print('Admission Number: ${_adminoController.text}');
//     print('Password: ${_passwordController.text}');
//     print('Gender: ${selectedGender}');
//     print('Department: ${_selectedDept}');
//     print('Course: ${_selectedCourse}');
//     print('Year: ${_selectedYear}');
//     try {
//       _progressDialog.show();
//       UserCredential userCredential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       if (userCredential != null) {
//         await _storeUserData(userCredential.user!.uid);
//         Fluttertoast.showToast(
//           msg: "Registration Successful",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.green,
//           textColor: Colors.white,
//         );
//         _progressDialog.hide();
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => Login()),
//         );
//       }
//     } catch (e) {
//       _progressDialog.hide();
//       Fluttertoast.showToast(
//         msg: "Registration Failed",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//       );
//       print("Error registering user: $e");
//       // Handle error, show message, or take appropriate action
//     }
//   }

//   Future<void> _storeUserData(String userId) async {
//     try {
//       final FirebaseFirestore firestore = FirebaseFirestore.instance;
//       await firestore.collection('tbl_studentregister').doc(userId).set({
//         'Student_name': _nameController.text,
//         'Student_email': _emailController.text,
//         'Student_contact': _contactController.text,
//         'Student_gender': selectedGender,
//         'Student_address': _addressController.text,
//         'Student_password': _passwordController.text,
//         'course_id': _selectedCourse,
//         'year_id': _selectedYear,
//         'Student_id': userId,
//         'student_status': 0,
//         // Add more fields as needed
//       });

//       await _uploadImage(userId);
//     } catch (e) {
//       print("Error storing user data: $e");
//       // Handle error, show message or take appropriate action
//     }
//   }

//   Future<void> _uploadImage(String userId) async {
//     try {
//       if (_selectedImage != null) {
//         Reference ref =
//             FirebaseStorage.instance.ref().child('Student_Photo/$userId.jpg');
//         UploadTask uploadTask = ref.putFile(File(_selectedImage!.path));
//         TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);

//         String imageUrl = await taskSnapshot.ref.getDownloadURL();

//         await FirebaseFirestore.instance
//             .collection('tbl_studentregister')
//             .doc(userId)
//             .update({
//           'Student_photo': imageUrl,
//         });
//       }

//       if (filePath != null) {
//         //FileUpload
//         // Step 1: Get the file name from the path
//         String fileName = filePath!.split('/').last;

//         // Step 2: Upload file to Firebase Storage with the original file name
//         Reference fileRef = FirebaseStorage.instance
//             .ref()
//             .child('Student_Files/$userId/$fileName');
//         UploadTask fileUploadTask = fileRef.putFile(File(filePath!));
//         TaskSnapshot fileTaskSnapshot =
//             await fileUploadTask.whenComplete(() => null);

//         // Step 3: Get download URL of the uploaded file
//         String fileUrl = await fileTaskSnapshot.ref.getDownloadURL();

//         // Step 4: Update user's collection in Firestore with the file URL
//         await FirebaseFirestore.instance
//             .collection('tbl_studentregister')
//             .doc(userId)
//             .update({
//           'Student_file': fileUrl,
//         });
//       }
//     } catch (e) {
//       print("Error uploading image: $e");
//       // Handle error, show message or take appropriate action
//     }
//   }


// await setDoc(doc(db, "collection_user", user), {
//         user_photo: url,
//         user_adhar: adharUrl,
//         user_name: fname + " " + lname,
//         user_email: email,
//         user_mobile: mobile,
//         user_address: address,
//         user_gender: gender,
//         user_place: place,
//         user_dob: dob,
//       });

