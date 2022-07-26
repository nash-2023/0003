import 'package:flutter/material.dart';

class tListViewBuilder extends StatefulWidget {
  const tListViewBuilder({Key? key}) : super(key: key);

  @override
  State<tListViewBuilder> createState() => _tListViewBuilderState();
}

class _tListViewBuilderState extends State<tListViewBuilder> {
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
  List<IconData> _icons = [
    Icons.abc,
    Icons.mail,
    Icons.flag,
    Icons.ac_unit,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      /** */
      child: ListView.builder(
        itemCount: x.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(x[i]["name"]),
            subtitle: Text(x[i]["screen"]),
            trailing: Icon(
              _icons[i],
            ),
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