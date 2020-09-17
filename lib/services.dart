import 'package:firebase_database/firebase_database.dart';

Database database = Database();

class Database {
  final databaseReference = FirebaseDatabase.instance.reference();
  dynamic result = "";

  void createData() {
    databaseReference.child("module").set({'call status': "called"});
    result = readData();
  }

  readData() {
    databaseReference.once().then((DataSnapshot snapshot) {
      //print('Data: ${snapshot.value}');
      return snapshot.value;
    });
  }
}
