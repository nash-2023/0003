import 'package:flutter/material.dart';

class Tdrbdnbtn extends StatefulWidget {
  const Tdrbdnbtn({Key? key}) : super(key: key);

  @override
  State<Tdrbdnbtn> createState() => _TdrbdnbtnState();
}

class _TdrbdnbtnState extends State<Tdrbdnbtn> {
  var _selectedCountry;
  @override
  Widget build(BuildContext context) {
    final _items = ["EGP", "USA", "ENG", "UAI", "SKG", "SYR", "TRK"]
        .map((i) => DropdownMenuItem(child: Text(i), value: i))
        .toList();

    return Center(
      //***********
      child: Container(
        color: Colors.amber,
        padding: EdgeInsets.all(50.0),
        margin: EdgeInsets.all(10.0),
        child: DropdownButton(
          underline: Divider(color: Colors.black),
          isExpanded: true,
          dropdownColor: Colors.red,
          // icon: Icon(Icons.abc),
          items: _items,
          onChanged: (v) {
            setState(() {
              _selectedCountry = v.toString();
            });
          },
          value: _selectedCountry,
          hint: Text(
            "Select Your Country",
            // textAlign: TextAlign.center,
          ),
        ),
      ),
      //*********
    );
  }
}
