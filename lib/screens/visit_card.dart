import 'package:flutter/material.dart';

import 'details.dart';
import '../ressources/consts_global.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052555),
      appBar: AppBar(
        title: Text('Ma carte de visite'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/index.jpeg'),
            ),
            SizedBox(height: 10.0),
            Card(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  nameVisitCard,
                  style: styleVisitCard,
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              margin: const EdgeInsets.only(top: 30.0, bottom: 15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(statusVisitCard,
                    textAlign: TextAlign.center, style: styleStatusVisitCard),
              ),
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Details();
                    }),
                  );
                },
                child: Text(
                  buttonVisitCard,
                  style: styleButtonVisitCard,
                ),
                color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
