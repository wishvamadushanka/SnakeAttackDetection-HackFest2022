import 'dart:io';

import 'package:flutter/material.dart';

class ImageUploadScreen extends StatefulWidget {
  File? image;
  ImageUploadScreen({required this.image});
  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          height: 200,
          width: 300,
          child: Image.file(widget.image!),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             GestureDetector(
        onTap: () async {
          print('need to set up upload image..');
          
        },
        child: Container(
          child: Center(
              child: Text(
            'Upload Image',
            style: TextStyle(color: Colors.white),
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.teal,
          ),
          height: 40,
          width: 150,
        ),
      )
          ],
        )
      ]),
    );
  }
}