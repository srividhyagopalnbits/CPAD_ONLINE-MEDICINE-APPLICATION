import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';

class SimpleTable extends StatefulWidget {
  @override
  _SimpleTableState createState() => _SimpleTableState();
}

class _SimpleTableState extends State<SimpleTable> {
  final String jsonSample =
      '[{"date":"09-10-2022","name":"Ibuprofen","brand name":"multiple brands","price":"55.20"},{"date":"12-10-2022","name":"Lisinopril","brand name":"Norvasc","price":"155.40"},{"date":"15-10-2022","name":"Levothyroxine","brand name":" Adderall","price":"285.70"}]';
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    var json = jsonDecode(jsonSample);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: toggle
              ? Column(
                  children: [
                    JsonTable(
                      json,
                      showColumnToggle: true,
                      allowRowHighlight: true,
                      rowHighlightColor: Colors.yellow[500]!.withOpacity(0.7),
                      paginationRowCount: 4,
                      onRowSelect: (index, map) {
                        print(index);
                        print(map);
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                  ],
                )
              : Center(
                  child: Text(getPrettyJSONString(jsonSample)),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.grid_on),
          onPressed: () {
            setState(
              () {
                toggle = !toggle;
              },
            );
          }),
    );
  }

  String getPrettyJSONString(jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }
}
