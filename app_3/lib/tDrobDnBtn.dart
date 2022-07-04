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
    var _items = ['Arc', 'Doc', 'Egp', 'Uae', 'Xyz', 'Dwg', 'Gid'];
    var _drbDnMnuItms = _items
        .map((e) => DropdownMenuItem(
              child: Text(e),
              value: e,
            ))
        .toList();
    void _chngCntry(v) {
      setState(() {
        _selectedCountry = v.toString();
      });
    }

    return Column(
      children: [
        Container(
          // alignment: Alignment.topCenter,
          width: 300.0,
          height: 70.0,
          // padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.only(left: 100.0, top: 100.0),
          decoration: BoxDecoration(
            // color: Color.fromARGB(255, 143, 92, 238),
            border: Border.all(
              color: Colors.black38,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: DropdownButton(
            items: _drbDnMnuItms,
            value: _selectedCountry,
            hint: Text("Select Your country"),
            onChanged: _chngCntry,
            underline: Divider(
              color: null,
              thickness: 0.0,
              height: 0.0,
            ),
            // elevation: 10,
            style: TextStyle(
              // color: Colors.red,
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Calibri",
            ),
            icon: Icon(
              Icons.add_circle,
              // color: Colors.green,   // if this hava a value, it will conquer
              // size: 30.0,            // if this hava a value, it will conquer
            ),
            isExpanded: true,
            // isDense: true,
            // alignment: Alignment.center,
            // borderRadius: BorderRadius.circular(5.0),
            menuMaxHeight: 210.0,
            itemHeight: 70.0,
            // focusColor: Color.fromARGB(255, 164, 243, 127),
            // dropdownColor: Color.fromARGB(255, 109, 243, 165),
            iconSize: 30.0,
            iconEnabledColor: Colors.green,
          ),

          //*********
        ),
        Container(
          // alignment: Alignment.topCenter,
          width: 300.0,
          height: 70.0,
          // padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.only(left: 100.0, top: 100.0),
          decoration: BoxDecoration(
            // color: Color.fromARGB(255, 143, 92, 238),
            border: Border.all(
              color: Colors.black38,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 20,
            ), //Text("leading"),
            title: Text("Air Conditioning Unit"),
            subtitle: Text("Toggle"),
            trailing: Icon(
              Icons.expand_more,
              size: 20,
            ),
            isThreeLine: true,
            dense: false,
            shape: Border.all(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        )
      ],
    );
  }
}
