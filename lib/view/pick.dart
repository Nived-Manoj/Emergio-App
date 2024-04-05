import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilesPick extends StatelessWidget {
  const FilesPick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null) return;
                },
                child: Text("Pick a file")),
          ),
        ],
      ),
    );
  }
}
