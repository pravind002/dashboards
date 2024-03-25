import 'package:dashboard/Controller/sign_in_controller.dart';
import 'package:dashboard/View/Login/sign_up.dart';
import 'package:dashboard/Widgets/text.dart';
import 'package:dashboard/Widgets/time_picker.dart';
import 'package:dashboard/bottom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  SignInController signInController = SignInController();
  final _formKey = GlobalKey<FormState>();
   TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();

    TimePicker timer=TimePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2c34),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                timer,
                SizedBox(height: Get.height*.35,),
                TextFormField(
                  controller: email,
                  decoration:  InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)
                    ),
                      hintText: 'Enter Mail',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Field Can\'t be Empty';
                    }
                    return null;
                    // return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)
                    ),
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Field Can\'t be Empty';
                    }
                    return null;
                    // return null;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 60,
                    width: Get.width,
                    decoration: BoxDecoration( color: Colors.black,borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                       
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
      
                         var status =   signInController.signIn(email, password);
                           if(status== 
                           1
                           
                           ){
                            Get.offAll(const BottomTabPage());
                           }
                          }
                          // signInController.signIn();
                          // Get.offAll(const BottomTabPage());
                        },
                        child: profileData('Sign In'))),
      // const Spacer(),
      const SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Text('Doesn\'t Have an Account',style: TextStyle(color: Colors.white),),
                          TextButton(onPressed: (){
                            Get.to( SignUpPage());
                          }, child: const Text('Sign Up'))
                        ],)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signIN() async {
// await FirebaseAuth instance.s
  }
}
