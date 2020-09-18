import 'package:flutter/material.dart';
import 'package:test_caller_app/patient_screen.dart';
import 'package:test_caller_app/services.dart';

import 'doctor_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Caller App")),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoctorScreen()));
                },
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  "Doctor",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PatientScreen()));
                },
                color: Colors.green,
                elevation: 5,
                child: Text(
                  "Patient",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  database.deleteData();
                },
                color: Colors.red,
                elevation: 5,
                child: Text(
                  "RESET",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
