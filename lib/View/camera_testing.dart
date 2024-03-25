import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraTesting extends StatefulWidget {
  const CameraTesting({super.key});

  @override
  State<CameraTesting> createState() => _CameraTestingState();
}

class _CameraTestingState extends State<CameraTesting> {
  // for image Pick
  String imagepath = "";
  String base64String = "";
  File? imageFile;

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);

    if (file != null) {
      imagepath = file.path;
      print(imagepath);

      File imageFile = File(imagepath);

      Uint8List imagebytes = await imageFile.readAsBytes();

      // print(imagebytes);

      base64String = base64.encode(imagebytes);
      print(base64String);
    } else {
      print("No image Selected");
    }

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () =>
                                          getImage(source: ImageSource.camera),
                                      child: Image.asset(
                                        'asset/camera.jpg',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('Camera',
                                        style: TextStyle(
                                            fontSize: 13,
                                            // fontFamily: 'mainfont',
                                            // fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 121, 110, 110))),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () =>
                                          getImage(source: ImageSource.gallery),
                                      child: Image.asset(
                                        'asset/gallery.png',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('Gallery',
                                        style: TextStyle(
                                            fontSize: 13,
                                            // fontFamily: 'mainfont',
                                            // fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 121, 110, 110))),
                                  ],
                                ),
                              ]),
                          const SizedBox(
                            height: 7,
                          ),
                          if (imageFile != null)
                            Center(
                              child: Container(
                                width: 70,
                                height: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(3),
                                  image: DecorationImage(
                                      image: FileImage(imageFile!)),
                                  // border: Border.all(width: 2, color: Colors.black12),
                                  // borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            )
                          else
                            Center(
                              child: Container(
                                width: 1,
                                height: 1,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  // image: DecorationImage(image: FileImage(imageFile!)),
                                  // border: Border.all(width: 2, color: Colors.black12),
                                  // borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
    ],),);
  }
}