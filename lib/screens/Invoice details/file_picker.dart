import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FilePicker extends StatefulWidget {
  const FilePicker({super.key});

  @override
  State<FilePicker> createState() => _FilePickerState();
}

class _FilePickerState extends State<FilePicker> {
  File? imageFile;
  selectImage(ImageSource source) async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery );

    if (pickedImage != null) {
      // imageFile =  Image.file(File(pickedImage.path));
      setState(() {
        imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              selectImage(ImageSource.gallery);
            },
            child: Text("click me for satis")),
      ),
    );
  }
}
