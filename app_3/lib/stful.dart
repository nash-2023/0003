import 'package:flutter/material.dart';

class Tstfull extends StatefulWidget {
  const Tstfull({Key? key}) : super(key: key);

  @override
  State<Tstfull> createState() => _TstfullState();
}

class _TstfullState extends State<Tstfull> {
  int _counter = 0;
  void _add() {
    setState(() {
      _counter += 1;
    });
  }

  void _sbt() {
    setState(() {
      _counter -= 1;
    });
  }

  void _zr() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _add,
        onLongPress: _sbt,
        onDoubleTap: _zr,
        child: Container(
          width: 150.0,
          height: 100.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 222, 255, 255),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "$_counter",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 240, 235),
                fontFamily: "Calibri",
                fontSize: 50,
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
