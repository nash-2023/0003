import 'package:flutter/material.dart';

class tListViewCustom extends StatefulWidget {
  const tListViewCustom({Key? key}) : super(key: key);

  @override
  State<tListViewCustom> createState() => _tListViewCustomState();
}

class _tListViewCustomState extends State<tListViewCustom> {
  Widget cntnr(String ctxt) {
    return Container(
      // width: 100.0,
      height: 500.0,
      margin: EdgeInsets.only(
        top: 10.0,
        right: 10.0,
        left: 10.0,
        bottom: 0.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.topCenter,
      // margin: EdgeInsets.all(10.0),
      child: Text(
        ctxt,
        style: TextStyle(height: 2.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.custom(
        /******************** Operate as ListView.builder*/
        // childrenDelegate: SliverChildBuilderDelegate(
        //   (c, i) {
        //     return cntnr("container $i");
        //   },
        //   childCount: 20,
        // ),
        /******************** Operate as normal listView */
        childrenDelegate: SliverChildListDelegate([
          cntnr("container # 1"),
          cntnr("container # 2"),
          cntnr("container # 3"),
          cntnr("container # 4"),
          cntnr("container # 5"),
          cntnr("container # 6"),
        ]),
      ),
    );
  }
}
