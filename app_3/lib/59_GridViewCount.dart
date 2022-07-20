import 'package:flutter/material.dart';

class tGridViewCount extends StatefulWidget {
  const tGridViewCount({Key? key}) : super(key: key);

  @override
  State<tGridViewCount> createState() => _tGridViewCountState();
}

class _tGridViewCountState extends State<tGridViewCount> {
  List x = [
    {
      "name": "Madad Ya Rab",
      "screen": "Madad Ya Rab",
      "cpu": "aaa",
      "icon": "Icons.flag",
    },
    {
      "name": "b",
      "screen": "bb",
      "cpu": "bbb",
      "icon": "Icons.flag",
    },
    {
      "name": "c",
      "screen": "cc",
      "cpu": "ccc",
      "icon": "Icons.flag",
    },
    {
      "name": "d",
      "screen": "dd",
      "cpu": "ddd",
      "icon": "Icons.flag",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      /** */
      padding: EdgeInsets.only(top: 10.0),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.5,
        children: List.generate(11, (i) {
          return ListTile(
            title: Text(x[0]["name"]),
            subtitle: Text(x[0]["screen"]),
            trailing: Icon(Icons.ac_unit),
            tileColor: Colors.red,
            shape: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          );
        }),
      ),
      /** */
    );
  }
}

/**
 * scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.2,
        ),
        // if List.generate added to listView normal ; it will be like ListView.builder EXACTLY
        children: List.generate(x.length, (i) {
          return ListTile(
            title: Text(x[i]["name"]),
            subtitle: Text(x[i]["screen"]),
            trailing: Icon(Icons.ac_unit),
            tileColor: Colors.red,
            shape: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          );
        }),
 */

