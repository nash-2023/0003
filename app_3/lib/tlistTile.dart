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
      mouseCursor: SystemMouseCursors.wait,
      onTap: () {
        print("tap");
      },
      onLongPress: () {
        print("longpress");
      },

      // shape: BorderRadius.circular(10.0),
      // dense: true,
    );
  }
}

// class tlistTile extends StatefulWidget {
//   const tlistTile({Key? key}) : super(key: key);

//   @override
//   State<tlistTile> createState() => _tlistTileState();
// }

// class _tlistTileState extends State<tlistTile> {
//   String _country = "";
//   bool _swich = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("Choose your Country"),
//         RadioListTile(
//           title: Text("Egypt"),
//           subtitle: Text("Cairo"),
//           value: "eg",
//           groupValue: _country,
//           onChanged: (cntry) {
//             setState(() {
//               _country = cntry.toString();
//             });
//           },
//         ),
//         RadioListTile(
//           value: "sd",
//           groupValue: _country,
//           onChanged: (cntry) {
//             setState(() {
//               _country = cntry.toString();
//             });
//           },
//         ),
//         RadioListTile(
//           value: "lb",
//           groupValue: _country,
//           onChanged: (cntry) {
//             setState(() {
//               _country = cntry.toString();
//             });
//           },
//         ),
//         RadioListTile(
//           value: "sg",
//           groupValue: _country,
//           onChanged: (cntry) {
//             setState(() {
//               _country = cntry.toString();
//             });
//           },
//         ),
//         RadioListTile(
//           value: "Xz",
//           groupValue: _country,
//           onChanged: (cntry) {
//             setState(() {
//               _country = cntry.toString();
//             });
//           },
//         ),
//         Switch(
//           value: _swich,
//           onChanged: (b) {
//             setState(() {
//               _swich = b;
//             });
//           },
//         ),
//         SwitchListTile(
//           controlAffinity: ListTileControlAffinity.leading,
//           title: Text("do you ?"),
//           value: _swich,
//           onChanged: (b) {
//             setState(() {
//               _swich = b;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
