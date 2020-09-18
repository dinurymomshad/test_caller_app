import 'package:flutter/material.dart';
import 'package:test_caller_app/medimate_logo.dart';
import 'package:test_caller_app/services.dart';

class PatientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: databaseReference.onChildAdded,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: Material(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Center(
                                child: MedimateLogo(
                                  width: 300,
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.account_circle,
                              color: Colors.blue,
                              size: 100,
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Incoming Call From Doctor",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.red, fontSize: 30),
                            ),
                            Spacer(),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      database.deleteData();
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                      child: Icon(
                                        Icons.call_end,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      database.deleteData();
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
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
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          child: Center(child: CircularProgressIndicator())),
                      SizedBox(height: 20),
                      Card(
                        color: Colors.grey,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "No Call Yet",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
