import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/upload/storage_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

final List<String> contents = [
  'Notes',
  'Question Paper',
];
final List<String> sem = [
  'Semester I',
  'Semester II',
  'Semester III',
  'Semester IV',
  'Semester V',
  'Semester VI',
];

class ScreenUpload extends StatefulWidget {
  const ScreenUpload({super.key});
  @override
  State<ScreenUpload> createState() => _ScreenUploadState();
}

class _ScreenUploadState extends State<ScreenUpload> {
  String selectedFileName = "No file Selected";
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      backgroundColor: ThemeColor.scaffoldBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upload',
                    style: TextStyle(
                      color: ThemeColor.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ThemeColor.lightGrey,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            Center(child: Text(selectedFileName)),
            kHeight20,
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final results = await FilePicker.platform.pickFiles(
                      allowMultiple: false,
                      type: FileType.custom,
                      allowedExtensions: ['pdf']);
                  if (results == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('No File Selected')));
                  }
                  final path = results!.files.single.path;
                  final fileName = results.files.single.name;
                  setState(() {
                    selectedFileName = fileName;
                  });

                  // storage
                  //     .uploadFile(path!, fileName)
                  //     .then(((value) => print('done')));
                  print(path);
                  print(fileName);
                },
                child: Text("Upload File"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}