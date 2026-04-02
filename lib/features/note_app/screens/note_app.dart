import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thread_com/features/note_app/cubit/note_cubit.dart';
import 'package:thread_com/features/note_app/cubit/note_state.dart';

class NoteApp extends StatefulWidget {
  const NoteApp({super.key});

  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  List<Map> excersize = [
    {
      "excersize":
          "I wake up early at 6:00 AM, brush my teeth, and wash my face to start the day refreshed.",
    },
    {
      "excersize":
          "I eat a healthy breakfast and prepare my bag before leaving for work or school",
    },
    {
      "excersize":
          "I attend my classes or work diligently, focusing on my tasks throughout the morning.",
    },
    {
      "excersize":
          "I enjoy a break in the afternoon for lunch and to relax before finishing my daily responsibilities.",
    },
    {
      "excersize":
          "I study or complete my work in the evening, then relax, have dinner with my family, and go to bed early.",
    },
  ];
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  void sendMassage() async {
    String title = textEditingController.text;
    String subtitle = textEditingController2.text;
    if (title.isNotEmpty && subtitle.isNotEmpty) {
      await FirebaseFirestore.instance.collection("notes").add({
        "listtile": subtitle,
        "title": title,
      });
      textEditingController.clear();
      textEditingController2.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
            
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Yuqori qismdagi sarlavha (AppBar o'rniga)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MY NOTES",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 5,
                          color: Colors.black, // Sarlavha ostidagi qalin chiziq
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 25),
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 2.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(7, 7),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                color: index % 2 == 0 ? Colors.red : Colors.black,
                              ),
        
                              Expanded(
                                child: Stack(
                                  children: [
                                    Column(
                                      children: List.generate(
                                        5,
                                        (i) => Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: Color.fromRGBO(
                                                    158,
                                                    158,
                                                    158,
                                                    0.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Matnlar
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "My daily work",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            excersize[index]["excersize"],
                                            style: TextStyle(
                                              fontFamily: 'monospace',
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 10,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Save Note",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: textEditingController,

                      decoration: InputDecoration(
                        hintText: "Add my daily work",
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: textEditingController2,

                      decoration: InputDecoration(
                        hintText: "Add my daily work",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        sendMassage();
                        context.read<HomeCubit>().saveNote();
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.save),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
    );
  }
}
