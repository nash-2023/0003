import 'package:flutter/material.dart';

class TButtons extends StatelessWidget {
  const TButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Depricated
          RaisedButton(
            padding: EdgeInsets.all(20.0),
            // onPressed: () {
            //   print("raised button pressed");
            // },
            // onLongPress: () {
            //   print("raised button long pressed");
            // },
            onPressed: null,
            child: Text(
              "Raised Button",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                // color: Colors.green,
              ),
            ),
            textColor: Colors.white,
            color: Colors.black87,
            splashColor: Colors.red,
            elevation: 5.0,
            disabledColor: Colors.black12,
            disabledTextColor: Colors.black26,
          ),

          ElevatedButton(
            onPressed: () {
              print("elevated Button");
            },
            onLongPress: () {
              print("long elevated button");
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              textStyle: TextStyle(
                fontFamily: "Calibri",
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
              ),
              shadowColor: Colors.red,
            ),
            child: Icon(
              Icons.abc,
              size: 30.0,
            ),
          ),

          ElevatedButton.icon(
            onPressed: () {
              print("elevated icon butto");
            },
            icon: Icon(
              Icons.map,
              color: Colors.red,
            ),
            label: Text("Elevated icon button"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),

          MaterialButton(
            color: Colors.red,
            splashColor: Colors.green,
            onPressed: () {
              print("Material Button");
            },
            onLongPress: () {
              print("material long press");
            },
            child: Icon(
              Icons.location_on,
              size: 40.0,
              color: Colors.yellow,
            ),
          ),
          TextButton(
            onPressed: () {
              print("Text Button");
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              primary: Colors.white,
              backgroundColor: Color.fromARGB(255, 1, 92, 4),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
            child: Text(
              "Text button",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          IconButton(
            onPressed: () {
              print("icon button");
            },
            icon: Icon(
              Icons.icecream_outlined,
              size: 35.0,
              color: Colors.blue,
            ),
          ),
          InkWell(
            onTap: () {
              print("inkweel");
            },
            child: Text("InkWeel"),
          ),
        ],
      ),
    );
  }
}
