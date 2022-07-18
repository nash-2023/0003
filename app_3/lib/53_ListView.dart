import 'package:flutter/material.dart';

class tListviewP2 extends StatefulWidget {
  const tListviewP2({Key? key}) : super(key: key);

  @override
  State<tListviewP2> createState() => _tListviewP2State();
}

class _tListviewP2State extends State<tListviewP2> {
  final cntnr = Container(
    width: 400.0,
    height: 100.0,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.red,
        width: 3.0,
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    margin: EdgeInsets.all(10.0),
    child: Text("Container"),
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
        cntnr,
      ],
    );
  }
}
