import 'package:flutter/material.dart';

class tCheckBoxList extends StatefulWidget {
  const tCheckBoxList({Key? key}) : super(key: key);

  @override
  State<tCheckBoxList> createState() => _tCheckBoxListState();
}

class _tCheckBoxListState extends State<tCheckBoxList> {
  @override
  // bool egp = true;
  // bool usa = false;
  // bool ksa = false;
  // bool uai = false;
  // bool sud = false;
  bool egp = false, usa = false, ksa = false, uai = false, sud = false;
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "choose country",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          CheckboxListTile(
            tileColor: Color.fromARGB(255, 200, 246, 252),
            title: Text("Egypt"),
            subtitle: Text("Cairo"),
            secondary: Icon(Icons.flag),
            // controlAffinity: ListTileControlAffinity.leading,
            // isThreeLine: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
            value: egp,
            onChanged: (v) {
              setState(() {
                egp = v!;
              });
            },
          )
        ],
      ),
    );
  }
}
