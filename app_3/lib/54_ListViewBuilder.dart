import 'package:flutter/material.dart';

class tListViewBuilder extends StatefulWidget {
  const tListViewBuilder({Key? key}) : super(key: key);

  @override
  State<tListViewBuilder> createState() => _tListViewBuilderState();
}

class _tListViewBuilderState extends State<tListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (cntx, i) {
          return Container(
            child: Container(
              height: 100.0,
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Text(
                "hellow-$i",
                style: TextStyle(
                  height: 2.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
