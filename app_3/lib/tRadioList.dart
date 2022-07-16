import 'package:flutter/material.dart';

class tRadioList extends StatefulWidget {
  const tRadioList({Key? key}) : super(key: key);

  @override
  State<tRadioList> createState() => _tRadioListState();
}

class _tRadioListState extends State<tRadioList> {
  @override
  String country = "";
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
          RadioListTile(
            activeColor: Colors.cyan,
            selected: country == "Egypt",
            title: Text("Egypt"),
            subtitle: Text("Cairo"),
            secondary: Icon(Icons.flag),
            value: "Egypt",
            groupValue: country,
            onChanged: (v) {
              setState(() {
                country = v.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("USA"),
            value: "usa",
            groupValue: country,
            onChanged: (v) {
              setState(() {
                country = v.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("KSA"),
            value: "ksa",
            groupValue: country,
            onChanged: (v) {
              setState(() {
                country = v.toString();
              });
            },
          ),
        ],
      ),
    );
  }
}
  /* 
   Row(
            children: [
              Text("EGP"),
              
            ],
          ),
          Row(
            children: [
              Text("USA"),
              
            ],
          ),
          Row(
            children: [
              Text("KSA"),
              
            ],
          ),

          */