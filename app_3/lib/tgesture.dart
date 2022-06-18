import 'package:flutter/material.dart';

class Tgesture extends StatelessWidget {
  const Tgesture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("GestDect tap !");
        },
        // onDoubleTap: () {
        //   print("GestDect double tap !");
        // },
        // onLongPress: () {
        //   print("GestDect longpress !");
        // },
        // onTapUp: (t) {
        //   print("tap up");
        // },
        // onTapDown: (t) {
        //   print("Tap Down");
        // },
        // onTapCancel: () {
        //   print("Tap cancel");
        // },

        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            "GestDect !",
            style: TextStyle(
              color: Color.fromARGB(255, 228, 6, 6),
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
