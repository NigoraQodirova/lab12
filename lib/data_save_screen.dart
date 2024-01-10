import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataSaveScreen extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  DataSaveScreen({super.key});

  void _saveToFirestore(BuildContext context) {
    String inputData = _textEditingController.text;
    if (inputData.isNotEmpty) {
      _firestore.collection('things').add({
        'input': inputData,
        'timestamp': FieldValue.serverTimestamp(),
      }).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Data is saved to db'),
          ),
        );
        _textEditingController.clear();
      }).catchError((error) {
        // Handle errors if needed
        // ignore: avoid_print
        print('Error: $error');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Save Data to Firestore')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(labelText: 'Enter Data'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _saveToFirestore(context),
              child: const Text('Save to Firestore'),
            ),
            const SizedBox(height: 20.0),
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
