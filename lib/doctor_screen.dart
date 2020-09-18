import 'package:flutter/material.dart';
import 'package:test_caller_app/services.dart';

import 'medimate_logo.dart';

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: MedimateLogo(
                      width: 300,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                        size: 100,
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Call Patient",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 30),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          database.createData();
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.call,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
