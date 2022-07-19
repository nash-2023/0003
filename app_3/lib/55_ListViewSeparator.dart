import 'package:flutter/material.dart';

class tListViewSeparator extends StatefulWidget {
  const tListViewSeparator({Key? key}) : super(key: key);

  @override
  State<tListViewSeparator> createState() => _tListViewSeparatorState();
}

class _tListViewSeparatorState extends State<tListViewSeparator> {
  List x = [
    {
      "name": "a",
      "screen": "aa",
      "cpu": "aaa",
      "icon": "Icons.flag",
    },
    {
      "name": "ssssssssssssssssssssssss",
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
      child: ListView.separated(
        itemCount: x.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(x[i]["name"]),
            subtitle: Text(x[i]["screen"]),
            trailing: Icon(
              Icons.ac_unit,
            ),
          );
        },
        separatorBuilder: (context, i) {
          return Divider(
            color: Colors.orange,
            thickness: 5.0,
            indent: 10.0,
            endIndent: 10.0,
          );
        },
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