import 'package:flutter/material.dart';

class HeadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      //padding: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100]),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.deepPurple[300]),
              child: Text(
                "Date",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.deepPurple[300]),
              child: Text(
                "Medicine",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.deepPurple[300]),
              child: Text(
                "Price",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ]),
    );
  }
}
