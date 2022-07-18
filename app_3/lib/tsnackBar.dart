import 'package:flutter/material.dart';

class tsnackBar extends StatefulWidget {
  const tsnackBar({Key? key}) : super(key: key);

  @override
  State<tsnackBar> createState() => _tsnackBarState();
}

class _tsnackBarState extends State<tsnackBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      /********************************************* Snack Bar */
      child: MaterialButton(
        color: Colors.red,
        splashColor: Colors.green,
        onPressed: () {
          var snackbar = SnackBar(
            content: Text("fun of"),
            duration: Duration(seconds: 2),
          );
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
      /** */
    );
  }
}
