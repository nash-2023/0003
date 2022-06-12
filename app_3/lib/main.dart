import 'package:flutter/material.dart';
import 'indexed_stack.dart';
import 'wrap.dart';
import 'Sngchscview.dart';
import 'sized_box.dart';
import 'tcenter.dart';
import 'tTbuttons.dart';
import 'tgesture.dart';
import '';
import '';
import '';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Traininig',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Madad Ya rab'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Tgesture(),
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
      