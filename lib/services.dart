import 'package:firebase_database/firebase_database.dart';

Database database = Database();
var databaseReference = FirebaseDatabase().reference().child('module');

class Database {
  dynamic result = "";

  void createData() {
    databaseReference.child("module").set({'call status': "called"});
  }

  deleteData() {
    databaseReference.remove();
  }
}
