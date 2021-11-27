import 'package:chit_chat/models/session_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class SessionService {
  FirebaseFirestore? _instance;
  List<SessionData> _sessions = [];

  List<SessionData> getSessions() {
    return _sessions;
  }

  Future<void> getSessionsCollectionFromFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference sessions = _instance!.collection('session');
    DocumentSnapshot snapshot = await sessions.doc('test').get();
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    SessionData dat = SessionData.fromJson(data);
    _sessions.add(dat);
  }
}
