import 'package:flutter/material.dart';

class tlistTile extends StatelessWidget {
  const tlistTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.flag),
      title: Text("List Title"),
      subtitle: Text("List SubTitle"),
      trailing: Icon(Icons.map),
      iconColor: Colors.green,
      textColor: Colors.lightBlue,

      shape: Border.all(color: Colors.black, width: 1.0),
      // dense: true,
    );
  }
}
