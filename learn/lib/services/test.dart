import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TestPage')),
        body: SafeArea(
            child: Column(
          children: [
            Text(''),
            ElevatedButton(
                onPressed: () {
                  FirebaseFirestore.instance
                      .collection("foodss")
                      .doc('rWfjtpayzSGee82HZydZ')
                      .update({'price': '10000'});
                },
                child: Text('aziz'))
          ],
        )));
  }
}
