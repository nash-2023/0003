import 'package:flutter/material.dart';

class tListviewP2 extends StatefulWidget {
  const tListviewP2({Key? key}) : super(key: key);

  @override
  State<tListviewP2> createState() => _tListviewP2State();
}

class _tListviewP2State extends State<tListviewP2> {
  Widget cntnr(String ctxt) {
    return Container(
      // width: 100.0,
      height: 200.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.topCenter,
      // margin: EdgeInsets.all(10.0),
      child: Text(
        ctxt,
        style: TextStyle(height: 2.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      scrollDirection: Axis.vertical,
      // physics: NeverScrollableScrollPhysics(),
      children: [
        cntnr("Container #1"),
        cntnr("Container #2"),
        cntnr("Container #3"),
        cntnr("Container #4"),
        cntnr("Container #5"),
        Container(
          // height: 200.0,
          child: ListView(
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        cntnr("Container #6"),
        cntnr("Container #7"),
        cntnr("Container #8"),
        cntnr("Container #9"),
        cntnr("Container #10"),
        cntnr("Container #11"),
      ],
    );
  }
}
