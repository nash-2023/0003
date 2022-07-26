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
import 'package:flutter/services.dart';
import 'package:app_3/60_ListViewCustom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /******************* to remove "DEBUG" Banner */
      debugShowCheckedModeBanner: false,
      /****************************** */
      title: 'Azkar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'O Almighty'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  GlobalKey<ScaffoldState> _scfldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scfldKey,
      /************************************  ep 60 waz = appBar */
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        // titleSpacing: 55.0,
        titleTextStyle: TextStyle(
          color: Color.fromARGB(232, 255, 255, 255),
          fontSize: 25.0,
          fontWeight: FontWeight.w600,
          fontFamily: "Arial",
        ),
        // leading: IconButton(icon: Icon(Icons.alarm), onPressed: () {}),
        leadingWidth: 50.0,
        actions: [
          IconButton(icon: Icon(Icons.ac_unit_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
          IconButton(icon: Icon(Icons.notification_add), onPressed: () {}),
        ],
        elevation: 10.0,
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        // backgroundColor: Color.fromARGB(31, 255, 255, 255),
        /* brightness: Brightness.light,  [depricated] */
        // systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      /******************************************* Drawer ep 61 waz/ */
      drawerScrimColor: Colors.red.withOpacity(0.50),
      drawer: Drawer(
        // backgroundColor: Colors.red.withOpacity(0.7),
        // elevation: 5.0,
        // shape: Border.all(
        //   color: Colors.black,
        //   width: 1.0,
        // ),
        // width: 250.0,
        // semanticLabel: "drawer",
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Abdalla Attia",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              accountEmail: Text(
                "abdalla.fat7y@hotmail.com",
                style: TextStyle(
                  fontSize: 15.0,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://placekitten.com/220/210",
                ),
              ),
            ),
            ListTile(
              title: Text("home"),
              subtitle: Text("bbbbbbbbbbbbbb"),
              leading: Icon(Icons.house_rounded),
            ),
            ListTile(
              title: Text("address"),
              subtitle: Text("bbbbbbbbbbbbbb"),
              leading: Icon(Icons.my_location),
            ),
            ListTile(
              title: Text("aaaaaaaaaaaaaaaa"),
              subtitle: Text("bbbbbbbbbbbbbb"),
              leading: Icon(Icons.abc),
            ),
            ListTile(
              title: Text("aaaaaaaaaaaaaaaa"),
              subtitle: Text("bbbbbbbbbbbbbb"),
              leading: Icon(Icons.house_rounded),
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(),
      /************************************************************* Body */
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          onPressed: () {
            _scfldKey.currentState?.openDrawer();
          },
          child: Text(
            "open drawer",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      //************************************************************** */
      // body: tListViewBuilder(),
      //************************************************************** */

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
