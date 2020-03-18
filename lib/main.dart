import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[400],
        accentColor: Colors.cyan[600],
        // Define the default font family.
        // fontFamily: 'Georgia',
        fontFamily: 'Robot',
        // Define the default TextTheme. Use this to specify the default
        textTheme: TextTheme(
          display3: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          display2: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          display1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.settings),
        //     onPressed: null,
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.menu),
        //     onPressed: null,
        //   ),
        // ],
      ),
      body: Center(
        child: Container(
          // color: Theme.of(context).accentColor,
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        // child: FaIcon(FontAwesomeIcons.addressBook),
        // backgroundColor: Colors.pink,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('home'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       title: Text('Business'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       title: Text('School'),
      //     ),
      //   ],
      //   currentIndex: 0,
      //   selectedItemColor: Theme.of(context).accentColor,
      //   onTap: null,
      // ),
    );
  }
}
