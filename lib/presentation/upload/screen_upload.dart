import 'package:nerve/core/const.dart';
import 'package:nerve/core/theme_color.dart';
import 'package:nerve/presentation/upload/storage_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

final List<String> contents = [
  'Notes',
  'Question Paper',
];
final List<String> semester = [
  'Sem I',
  'Sem II',
  'Sem III',
  'Sem IV',
  'Sem V',
  'Sem VI',
];
final List<String> revision = [
  '2015',
  '2021',
];

String dropdownSemester = "Select semester";
String dropdownContent = "Select document Type";
String dropdownRevision = "Select revision";

class ScreenUpload extends StatefulWidget {
  const ScreenUpload({super.key});
  @override
  State<ScreenUpload> createState() => _ScreenUploadState();
}

class _ScreenUploadState extends State<ScreenUpload> {
  String selectedFileName = "No file Selected";
  String selectedFilePath = "null";
  final Storage storage = Storage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
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
                      // TODO on tap
                    },
                  )
                ],
              ),
              kHeight20,
              // BLUE CONTAINER START
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: ThemeColor.shadow,
                        blurRadius: 100,
                        spreadRadius: 1,
                        offset: Offset(0, 10)),
                  ],
                  color: ThemeColor.primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedFileName,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: ThemeColor.white),
                            ),
                            Text(
                              "$dropdownContent of $dropdownSemester",
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: ThemeColor.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final results = await FilePicker.platform.pickFiles(
                              allowMultiple: false,
                              type: FileType.custom,
                              allowedExtensions: ['pdf']);
                          if (results == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('No File Selected')));
                          }
                          setState(() {
                            selectedFileName = results!.files.single.name;
                            selectedFilePath = results.files.single.path!;
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ThemeColor.secondary),
                          child: const Center(
                            child: Icon(
                              Icons.attach_file,
                              size: 30,
                              color: ThemeColor.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // BLUE CONTAINER END
              kHeight20,
// DROP DOWN REVISION
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: ThemeColor.shadow,
                        blurRadius: 10,
                        spreadRadius: 0.1,
                        offset: Offset(0, 10)),
                  ],
                  color: ThemeColor.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: DropdownButton(
                    underline: Container(
                      height: 0,
                      color: Colors.white,
                    ),
                    hint: Text(
                      dropdownRevision,
                      style: const TextStyle(color: ThemeColor.black),
                    ),
                    style: const TextStyle(color: ThemeColor.black),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    dropdownColor: ThemeColor.scaffoldBgColor,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    items:
                        revision.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: ThemeColor.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownRevision = value!;
                      });
                    },
                  ),
                ),
              ),
              kHeight,
// DROP DOWN SEMESTER
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: ThemeColor.shadow,
                        blurRadius: 10,
                        spreadRadius: 0.1,
                        offset: Offset(0, 10)),
                  ],
                  color: ThemeColor.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: DropdownButton(
                    underline: Container(
                      height: 0,
                      color: Colors.white,
                    ),
                    hint: Text(
                      dropdownSemester,
                      style: const TextStyle(color: ThemeColor.black),
                    ),
                    style: const TextStyle(color: ThemeColor.black),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    dropdownColor: ThemeColor.scaffoldBgColor,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    items:
                        semester.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: ThemeColor.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownSemester = value!;
                      });
                    },
                  ),
                ),
              ),
              kHeight,
// DROP DOWN DOC TYPE
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: ThemeColor.shadow,
                        blurRadius: 10,
                        spreadRadius: 0.1,
                        offset: Offset(0, 10)),
                  ],
                  color: ThemeColor.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: DropdownButton(
                    underline: Container(
                      height: 0,
                      color: Colors.white,
                    ),
                    hint: Text(
                      dropdownContent,
                      style: const TextStyle(color: ThemeColor.black),
                    ),
                    style: const TextStyle(color: ThemeColor.black),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    dropdownColor: ThemeColor.scaffoldBgColor,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    items:
                        contents.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: ThemeColor.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownContent = value!;
                      });
                    },
                  ),
                ),
              ),
              kHeight30,
              GestureDetector(
                onTap: () {
                  if (selectedFilePath == "null") {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('No File Selected')));
                  } else {
                    storage.uploadFile(selectedFilePath, selectedFileName).then(
                        ((value) => ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('File uploaded successfully')))));
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: ThemeColor.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      "Upload",
                      style: TextStyle(fontSize: 15, color: ThemeColor.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
