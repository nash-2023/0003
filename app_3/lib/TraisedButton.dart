import 'package:flutter/material.dart';

class TraisedButton extends StatelessWidget {
  const TraisedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              print("elevated Button");
            },
            child: Text("funny"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              textStyle: TextStyle(
                fontFamily: "Calibri",
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: null,
            icon: Icon(
              Icons.map,
            ),
            label: Text("fyb"),
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              print("map");
            },
            child: Icon(
              Icons.location_on,
              size: 40.0,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
