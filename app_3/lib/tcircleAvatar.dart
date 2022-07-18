import 'package:flutter/material.dart';

class tcircleAvatar extends StatefulWidget {
  const tcircleAvatar({Key? key}) : super(key: key);

  @override
  State<tcircleAvatar> createState() => _tcircleAvatarState();
}

class _tcircleAvatarState extends State<tcircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      /************************************ Circle Avatar */
      child: CircleAvatar(
        radius: 100.0,
        backgroundColor: Colors.red,
        backgroundImage: NetworkImage(
          "https://placekitten.com/200/250",
          scale: 1.5,
        ),
        child: Text("HELLOW"),
      ),
      /** *********************************/
    );
  }
}
