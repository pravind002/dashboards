import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{

 


Future signIn(TextEditingController email, TextEditingController password) async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    
    email: email.text.trim(),
    password: password.text.trim(),
  ) ;

}


}