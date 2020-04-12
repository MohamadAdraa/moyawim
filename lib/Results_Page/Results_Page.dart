import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:two/Profile_Page/Profile_Page.dart';

class ResultsPage extends StatelessWidget {
  final String jobName;
  const ResultsPage({
    this.jobName,
  });

  Widget _buildProfileWidgets(BuildContext context, DocumentSnapshot document) {
    return ProfilePage(
      name1: document['name'],
      lastname1: document['lastname'],
      job1: document['job'],
      desc1: document['description'],
      phonenb1: document['phone number'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: SearchBar(),
//      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection(jobName).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text("Loading...");
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (BuildContext context, int index) =>
                _buildProfileWidgets(context, snapshot.data.documents[index]),
          );
        },
      ),
    );
  }
}
