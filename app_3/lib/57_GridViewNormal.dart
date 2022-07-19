import 'package:flutter/material.dart';

class tGridViewNormal extends StatefulWidget {
  const tGridViewNormal({Key? key}) : super(key: key);

  @override
  State<tGridViewNormal> createState() => _tGridViewNormalState();
}

class _tGridViewNormalState extends State<tGridViewNormal> {
  List x = [
    {
      "name": "a",
      "screen": "aa",
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
      child: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.2,
        ),
        children: [
          ListTile(
            title: Text(x[1]["name"]),
            subtitle: Text(x[1]["screen"]),
            trailing: Icon(Icons.ac_unit),
            tileColor: Colors.red,
            shape: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          ListTile(
            title: Text(x[2]["name"]),
            subtitle: Text(x[2]["screen"]),
            trailing: Icon(Icons.ac_unit),
            tileColor: Colors.red,
            shape: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          ListTile(
            title: Text(x[3]["name"]),
            subtitle: Text(x[3]["screen"]),
            trailing: Icon(Icons.ac_unit),
            tileColor: Colors.red,
            shape: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          ListTile(
            title: Text(x[0]["name"]),
            subtitle: Text(x[0]["screen"]),
            trailing: Icon(Icons.ac_unit),
            tileColor: Colors.red,
            shape: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ],
      ),
      /** */
    );
  }
}

/*

Container(
            height: 100.0,
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              "hellow-$i",
              style: TextStyle(
                height: 2.0,
              ),
            ),
          );

*/
