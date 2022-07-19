import 'package:flutter/material.dart';

class tGridView extends StatefulWidget {
  const tGridView({Key? key}) : super(key: key);

  @override
  State<tGridView> createState() => _tGridViewState();
}

class _tGridViewState extends State<tGridView> {
  List x = [
    {
      "name": "a",
      "screen": "aa",
      "cpu": "aaa",
      "icon": "Icons.flag",
    },
    {
      "name": "ss",
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
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.7,
        ),
        itemCount: x.length,
        itemBuilder: (context, i) {
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
