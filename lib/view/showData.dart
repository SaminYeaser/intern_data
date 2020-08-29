import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intern_data/model/myData.dart';
import 'package:firebase_database/firebase_database.dart';

class showData extends StatefulWidget {
  @override
  _showDataState createState() => _showDataState();
}

class _showDataState extends State<showData> {
  Future getData() async{
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestore.collection("internflutter-bb6b4").get();
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Magpie Data'
        ),
      ),
    );
  }
}
