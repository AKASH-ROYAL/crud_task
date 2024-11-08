import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud_task/services/firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirestoreService firestoreService = FirestoreService();

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase CRUD Task"),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: firestoreService.getNotesStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List noteList = snapshot.data!.docs;
              return ListView.builder(
                  itemCount: noteList.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot document = noteList[index];
                    String id = document.id;
                    var data = document.data() as Map<String, dynamic>;

                    String noteText = data['note'];

                    return ListTile(
                      title: Text(noteText),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                openDialog(docId: id);
                              },
                              icon: Icon(Icons.settings)),
                          IconButton(
                              onPressed: () {
                                firestoreService.deleteNote(id);
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    );
                  });
            } else {
              return Text("No Notes...");
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openDialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  openDialog({String? docId}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextFormField(
                controller: textController,
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      if (docId == null) {
                        firestoreService.addNote(textController.text);
                      } else {
                        firestoreService.updateNote(docId, textController.text);
                      }
                      textController.clear();

                      Navigator.pop(context);
                    },
                    child: Text("Add"))
              ],
            ));
  }
}
