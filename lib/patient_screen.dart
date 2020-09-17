import 'package:flutter/material.dart';
import 'package:test_caller_app/services.dart';

class PatientScreen extends StatefulWidget {
  @override
  _PatientScreenState createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  var result;

  @override
  Widget build(BuildContext context) {
    setState(() {
      result = database.result;
      //print(result);
    });
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: result == "" ? Colors.grey : Colors.green,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result == "" ? "No Call Yet" : "Incoming Call From Doctor",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
