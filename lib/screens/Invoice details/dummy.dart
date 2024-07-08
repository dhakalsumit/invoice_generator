import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Filepick extends StatefulWidget {
  const Filepick({super.key});

  @override
  State<Filepick> createState() => _FilepickState();
}

class _FilepickState extends State<Filepick> {
  File? imageFile;
  selectImage(ImageSource source) async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        imageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selectImage(ImageSource.gallery),
        if (imageFile != null)
          Expanded(
            child: Container(
              child: Image.file(
                File(imageFile!.path),
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
    );
  }
}
