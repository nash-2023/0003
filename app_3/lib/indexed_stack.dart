import 'package:flutter/material.dart';

class Indexed_stack extends StatelessWidget {
  const Indexed_stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: 1,
      alignment: Alignment.center,
      children: [
        Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
        ),
        Container(
          width: 230.0,
          height: 230.0,
          color: Colors.green,
        ),
        Container(
          width: 210.0,
          height: 210.0,
          color: Colors.white,
        ),
        Container(
          width: 190.0,
          height: 190.0,
          color: Colors.cyan,
        ),
      ],
    );
  }
}
