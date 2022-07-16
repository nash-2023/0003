import 'package:flutter/material.dart';

class tSwitch extends StatefulWidget {
  const tSwitch({Key? key}) : super(key: key);

  @override
  State<tSwitch> createState() => _tSwitchState();
}

class _tSwitchState extends State<tSwitch> {
  @override
  bool switchValue = true;
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Text("Do you want ?"),
    //     Switch(
    //       activeColor: Colors.green,
    //       activeTrackColor: Colors.blue,
    //       inactiveThumbColor: Colors.black,
    //       inactiveTrackColor: Colors.black,
    //       value: switchValue,
    //       onChanged: //null,
    //           (v) {
    //         setState(() {
    //           switchValue = v;
    //         });
    //       },
    //     ),
    //   ],
    // );

    return SwitchListTile(
      title: Text("Do you want?"),
      subtitle: Text("fun"),
      activeColor: Colors.green,
      activeTrackColor: Colors.blue,
      inactiveThumbColor: Colors.black,
      inactiveTrackColor: Colors.black,
      value: switchValue,
      onChanged: //null,
          (v) {
        setState(() {
          switchValue = v;
        });
      },
    );
  }
}
