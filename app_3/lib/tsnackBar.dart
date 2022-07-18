import 'package:flutter/material.dart';

class tsnackBar extends StatefulWidget {
  const tsnackBar({Key? key}) : super(key: key);

  @override
  State<tsnackBar> createState() => _tsnackBarState();
}

class _tsnackBarState extends State<tsnackBar> {
  /********************************************* Snack Bar */
  final snackbar = SnackBar(
    content: Text(
      "fun of",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 50.0,
      ),
    ),
    duration: Duration(milliseconds: 1500),
    padding: EdgeInsets.all(50.0),
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.all(50.0),
    backgroundColor: Colors.white,
    shape: Border.all(width: 1.0, color: Colors.black),
    onVisible: () {
      print("show snack bar");
    },
    elevation: 15.0,
    action: SnackBarAction(
      label: "Close!",
      textColor: Colors.black,
      onPressed: () {},
    ),
  );
  /********************************************* allert */
  final allert = AlertDialog(
    title: Text("hey YOU !"),
    content: Text(
      "this is arbitrary allert dialogue",
      textAlign: TextAlign.center,
    ),
    titlePadding: EdgeInsets.all(100.0),
    // contentPadding: EdgeInsets.all(20.0),
    titleTextStyle: TextStyle(
      color: Colors.red,
      fontSize: 50,
      fontWeight: FontWeight.w900,
    ),
    contentTextStyle: TextStyle(
      color: Colors.green,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    ),
    elevation: 20.0,
    backgroundColor: Colors.yellow,
    shape: Border.all(
      color: Colors.white,
      width: 5.0,
    ),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text("ok"),
      ),
      TextButton(
        onPressed: () {},
        child: Text("cancel"),
      ),
    ],
    actionsPadding: EdgeInsets.all(5.0),
  );
  /**************************************************** */
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /**************************************** show Snack Bar */
          MaterialButton(
            color: Colors.red,
            splashColor: Colors.green,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text(
              "Show Snack Bar",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          /***************************************** show allert */
          MaterialButton(
            color: Colors.red,
            splashColor: Colors.green,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return allert;
                },
              );
            },
            child: Text(
              "Show Alert",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          /************** */
        ],
      ),
      /** */
    );
  }
}
