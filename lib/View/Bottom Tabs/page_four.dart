import 'package:dashboard/View/Login/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/text.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2c34),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,width: Get.width,
            color: Colors.black,
          
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const CircleAvatar(backgroundColor: Colors.white,
          radius: 40,),

          Column(children: [
 profileData('\nEnter Name',fonsize: 25.0),
          profileData('Enter Mail OR Number')

          ],)

         
         ],), ),
         Padding(
           padding: const EdgeInsets.all(10),
           child: Column(
            children: [
         
           profileData('Profile'),
           TextButton(onPressed: (){
            Get.offAll(SignInPage());
           }, child: profileData('LogOut'))

           

         
         
            ],
           ),
         )
        ],
      ),
    );
  }
}