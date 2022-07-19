import 'package:flutter/material.dart';

class tLisGenerate extends StatefulWidget {
  const tLisGenerate({Key? key}) : super(key: key);

  @override
  State<tLisGenerate> createState() => _tLisGenerateState();
}

class _tLisGenerateState extends State<tLisGenerate> {
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
      ),
      /** */
    );
  }
}


//  List.generate(
//       5,
//       (i) {
//         return Container(child: Text("container"),);
//       },
//     );
