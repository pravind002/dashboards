import 'package:dashboard/Controller/sign_up_controller.dart';
import 'package:dashboard/bottom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

   final SignUpController _signUpController = Get.put(SignUpController());
GlobalKey formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _signUpController.formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _signUpController.nameController,
               validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field can\'t be empty';
                    }
                    return null;
                  },
              decoration: const InputDecoration(hintText: 'Enter Name'),
            ),
            TextFormField(
              controller: _signUpController.mailController,
              validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field can\'t be empty';
                    }
                    return null;
                  },
              decoration: const InputDecoration(hintText: 'Enter mail'),
            ),
            TextFormField(
              controller: _signUpController.numberController,
              validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field can\'t be empty';
                    }
                    return null;
                  },
              decoration: const InputDecoration(hintText: 'Enter Number'),
            ),
            TextFormField(
              controller: _signUpController.ageController,
             validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field can\'t be empty';
                    }
                    return null;
                  },
              decoration: const InputDecoration(hintText: 'Enter age'),
            ),
            ElevatedButton(
                onPressed: ()  {

                  _signUpController.addUserDetails(
                        _signUpController.nameController.toString(),
                        _signUpController.mailController.toString(),
                        _signUpController.numberController.toString(),
                        _signUpController.ageController.toString());
 Get.snackbar('Alert', 'Sign Up Successfull !');

                  if (_signUpController.formKey.currentState!.validate()) {
                      Get.offAll(()=> const BottomTabPage());
                  }
                },
                child: const Text('Sign Up'))
          ],
        ),
      ),
    );
  }
}
