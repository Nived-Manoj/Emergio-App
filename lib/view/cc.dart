import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class cc extends StatefulWidget {
  const cc({super.key});

  @override
  State<cc> createState() => _ccState();
}

class _ccState extends State<cc> {
  PlatformFile? pickedFile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {
    final path = 'files/${pickedFile!.name}';
    final file = File(pickedFile!.path!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (pickedFile != null)
            Container(
              child: Center(
                child: Text(pickedFile!.name),
              ),
            ),
          ElevatedButton(onPressed: uploadFile, child: Text("press"))
        ],
      ),
    );
  }
}
