import 'package:flutter/material.dart';
import 'package:nerve/presentation/widgets/pdf_viewer.dart';
import '../../../../core/theme_color.dart';
import '../../../upload/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class ScreenNotes extends StatefulWidget {
  const ScreenNotes({super.key});

  @override
  State<ScreenNotes> createState() => _ScreenNotesState();
}

class _ScreenNotesState extends State<ScreenNotes> {
  Storage storage = Storage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Notes",
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
              FutureBuilder(
                  future: storage.listFiles(),
                  builder: (BuildContext context,
                      AsyncSnapshot<firebase_storage.ListResult> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: snapshot.data!.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PdfViewer(
                                                src: storage.getURL(snapshot
                                                    .data!.items[index].name),
                                              )),
                                    );
                                  },
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: ThemeColor.shadow,
                                              blurRadius: 100,
                                              spreadRadius: 1,
                                              offset: Offset(0, 10)),
                                        ],
                                        color: ThemeColor.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 2),
                                      child: ListTile(
                                        // trailing: Padding(
                                        //   padding:
                                        //       const EdgeInsets.only(right: 10),
                                        //   child: Text(
                                        //     "Yo",
                                        //     style: const TextStyle(
                                        //         fontSize: 17,
                                        //         color: ThemeColor.black,
                                        //         fontWeight: FontWeight.w600),
                                        //   ),
                                        // ),
                                        title: Text(
                                          snapshot.data!.items[index].name,
                                          style: const TextStyle(
                                              fontSize: 17,
                                              color: ThemeColor.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );

                            // ElevatedButton(
                            //     onPressed: () {},
                            //     child:
                            //         Text(snapshot.data!.items[index].name));
                          });
                    }
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Container();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
