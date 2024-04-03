import 'dart:async';
import 'dart:core';

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DDD extends StatefulWidget {
  const DDD({super.key});

  @override
  State<DDD> createState() => _DDDState();
}

class _DDDState extends State<DDD> {
  late Future<ListResult> futureFiles;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref('/files').listAll();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ListResult>(
        future: futureFiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;
            return ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                final file = files[index];
                return ListTile(
                  title: Text(file.name),
                  trailing: IconButton(
                      onPressed: () => downloadFile(file),
                      icon: Icon(Icons.download)),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("Error occurred while");
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  downloadFile(Reference ref) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');
    await ref.writeToFile(file);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("User hsgh Registered Successfully "),
    ));
  }
}
