import 'dart:io';
import 'package:flutter/material.dart';
import  'package:image_picker/image_picker.dart';

class FacialUpload extends StatefulWidget {
  const FacialUpload({Key? key}) : super(key: key);

  @override
  State<FacialUpload> createState() => _FacialUploadState();
}

class _FacialUploadState extends State<FacialUpload> {
  File? _image;

  final _picker = ImagePicker();

  //Implementing the image picker
  Future<void> _openImagePicker() async { 
    final XFile? pickedImage =  await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: () {
             Navigator.pop(context);
           },
         ),
        backgroundColor: const Color(0xFF1976D2),
        title: const Text('Facial Upload'),
      ),
      body: Builder(
        builder: (context) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xff476cfb),
                    child: ClipOval(
                      child: SizedBox(
                        width: 180,
                        height: 180,
                        child: 
                          (_image != null) ? Image.file(_image!, fit: BoxFit.fill) : Image.asset('assets/icons/logo_foreground.png', fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 60.0),
                  child: IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {
                      _openImagePicker();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Save and return later', style: TextStyle(color: Colors.white),),
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    textStyle: TextStyle(
                      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                ElevatedButton(
                  child: Text('Save and Continue', style: TextStyle(color: Colors.white),),
                  onPressed: () { },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    textStyle: TextStyle(
                      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ]
            )
          ],
        )
        ),
      ),
    );
    }

  }