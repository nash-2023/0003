import 'package:flutter/material.dart';

class tRadio extends StatefulWidget {
  const tRadio({Key? key}) : super(key: key);

  @override
  State<tRadio> createState() => _tRadioState();
}

class _tRadioState extends State<tRadio> {
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
          Row(
            children: [
              Text("EGP"),
              Radio(
                value: "Egypt",
                groupValue: country,
                onChanged: (v) {
                  setState(() {
                    country = v.toString();
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text("USA"),
              Radio(
                value: "usa",
                groupValue: country,
                onChanged: (v) {
                  setState(() {
                    country = v.toString();
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text("KSA"),
              Radio(
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
        ],
      ),
    );
  }
}
