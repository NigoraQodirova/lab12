import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataReadScreen extends StatelessWidget {
  DataReadScreen({super.key});
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Save Data to Firestore')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Entries in Database:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('things')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final documents = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(documents[index]['input']),
                    );
                  },
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
