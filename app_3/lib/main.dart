import 'package:flutter/material.dart';
import 'package:app_3/indexed_stack.dart';
import 'package:app_3/wrap.dart';
import 'package:app_3/Sngchscview.dart';
import 'package:app_3/sized_box.dart';
import 'package:app_3/tcenter.dart';
import 'package:app_3/tTbuttons.dart';
import 'package:app_3/tgesture.dart';
import 'package:app_3/stful.dart';
import 'package:app_3/stful2.dart';
import 'package:app_3/tDrobDnBtn.dart';
import 'package:app_3/tCheckBox.dart';
import 'package:app_3/tCheckBoxList.dart';
import 'package:app_3/tRadio.dart';
import 'package:app_3/tRadioList.dart';
import 'package:app_3/tSwitch.dart';
import 'package:app_3/tlistTile.dart';
import 'package:app_3/tcircleAvatar.dart';
import 'package:app_3/tsnackBar.dart';
import 'package:app_3/53_ListView.dart';
import 'package:app_3/54_ListViewBuilder.dart';
import 'package:app_3/55_ListViewSeparator.dart';
import 'package:app_3/56_GridView.dart';
import 'package:app_3/57_GridViewNormal.dart';
import 'package:app_3/58_ListGenerate.dart';
import 'package:app_3/59_GridViewCount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Azkar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Madad Ya rab'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(icon: Icon(Icons.alarm), onPressed: () {}),
        leadingWidth: 50.0,
        actions: [
          IconButton(icon: Icon(Icons.ac_unit_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
          IconButton(icon: Icon(Icons.notification_add), onPressed: () {}),
        ],
        elevation: 0.1,
        shadowColor: Color.fromARGB(255, 54, 184, 244),
        backgroundColor: Color.fromARGB(31, 255, 255, 255),
        brightness: Brightness.light,
        centerTitle: true,
      ),
      body: tGridViewCount(),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print("FAB");
      //   },
      //   backgroundColor: Colors.black12,
      //   tooltip: "Floating Action Button",
      //   child: Icon(
      //     Icons.crop,
      //     size: 30.0,
      //     color: Colors.red,
      //   ),
      // ),
    );
  }
}



// body layout

// Center(
//         // body container
//         child: Container(
//           margin: EdgeInsets.all(5.0),
//           padding: EdgeInsets.all(10.0),
//           // width: double.infinity,
//           // height: double.infinity,
//           decoration: BoxDecoration(
//               color: Color.fromARGB(31, 250, 152, 152),
//               border: Border.all(
//                 color: Colors.red,
//                 width: 2.0,
//               ),
//               borderRadius: BorderRadius.circular(10.0)),
//           // *****************************
//           child: Sized_box(),
//           // ******************************
//         ),
//       ),
      