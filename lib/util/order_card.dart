import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

class OrderTable extends StatefulWidget {
  @override
  _OrderTableState createState() => _OrderTableState();
}

class _OrderTableState extends State<OrderTable> {
  List _items = [];
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/activeorder.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  void initState() {
    super.initState();
    // Call the readJson method when the app starts
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          // Display the data loaded from oldorder.json
          _items.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(4),
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        key: ValueKey(_items[index]["id"]),
                        margin: const EdgeInsets.all(3),
                        color: Color.fromARGB(255, 224, 222, 242),
                        child: ListTile(
                          leading: Text(_items[index]["date"]),
                          title: Text(_items[index]["name"]),
                          subtitle: Text(_items[index]["brandname"]),
                          trailing: Text(_items[index]["price"]),
                        ),
                      );
                    },
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
