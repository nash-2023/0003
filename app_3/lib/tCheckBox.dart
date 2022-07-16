import 'package:flutter/material.dart';

class tCheckBox extends StatefulWidget {
  const tCheckBox({Key? key}) : super(key: key);

  @override
  State<tCheckBox> createState() => _tCheckBoxState();
}

class _tCheckBoxState extends State<tCheckBox> {
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
          Row(
            children: [
              Text("EGP"),
              Checkbox(
                activeColor: Colors.red,
                focusColor: Colors.green,
                checkColor: Colors.black,
                hoverColor: Colors.yellow,
                mouseCursor: SystemMouseCursors.forbidden,
                splashRadius: 15.0,
                value: egp,
                onChanged: (val) {
                  setState(() {});
                  egp = val!;
                },
              ),
              Text("KSA"),
              Checkbox(
                value: ksa,
                onChanged: (val) {
                  setState(() {
                    ksa = val!;
                  });
                },
              ),
              Text("USA"),
              Checkbox(
                value: usa,
                onChanged: (val) {
                  setState(() {
                    usa = val!;
                  });
                },
              ),
              Text("UAI"),
              Checkbox(
                value: uai,
                onChanged: (val) {
                  setState(() {
                    uai = val!;
                  });
                },
              ),
              Text("SUD"),
              Checkbox(
                value: sud,
                onChanged: (val) {
                  setState(() {
                    sud = val!;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
