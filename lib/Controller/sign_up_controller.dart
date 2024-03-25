import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

final nameController=TextEditingController();
final mailController =TextEditingController();
final numberController=TextEditingController();
final ageController=TextEditingController();
final formKey=GlobalKey<FormState>();

Future addUserDetails(String firstName,String mail,String number,String age)async{
 await FirebaseFirestore.instance.collection('users/').add({
'first name':firstName,
'mail':mail,
'email':number,
'age':age
 });
}

}