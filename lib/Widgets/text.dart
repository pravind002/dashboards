import 'package:flutter/material.dart';

Text profileData(String data, {fonsize}){
  return  Text(data,style: TextStyle(
            color: Colors.white,
            fontSize:fonsize ?? 20,
            fontWeight: FontWeight.w500
          ),);
}