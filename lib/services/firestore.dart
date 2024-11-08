import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  addNote(String note) {
    return notes.add({
      'note': note,
      'timestamp': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getNotesStream() {
    final noteStream = notes.orderBy('timestamp', descending: true).snapshots();
    return noteStream;
  }

  updateNote(String docId, String newNote) {
    return notes
        .doc(docId)
        .update({'note': newNote, 'timeStamp': Timestamp.now()});
  }

  deleteNote(String docId) {
    return notes.doc(docId).delete();
  }
}
