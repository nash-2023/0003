import 'package:flutter/material.dart';

class Tstfull2 extends StatefulWidget {
  const Tstfull2({Key? key}) : super(key: key);

  @override
  State<Tstfull2> createState() => _Tstfull2State();
}

class _Tstfull2State extends State<Tstfull2> {
  String _text = "hellow world";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 50.0,
              fontFamily: "Arial",
              height: 5.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _text = "funnnnnnnn ";
              });
              print(_text);
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              child: Text("change text"),
            ),
          ),
        ],
      ),
    );
  }
}
