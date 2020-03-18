import 'package:bdshare/picturecard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:random_string/random_string.dart';

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
        primaryColor: Colors.black,
        accentColor: Colors.red[900],
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
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}
class _State extends State {
  var _cardList = List<PictureCard>();
  @override
  void initState() {
    _cardList.add(PictureCard(
      'Image1',
      'The best image in the world',
      'https://unsplash.it/id/${randomNumeric(2)}/600/600',
    ));
    _cardList.add(PictureCard(
      'Image2',
      'The 2nd image in the world',
      'https://unsplash.it/id/${randomNumeric(2)}/600/400',
    ));
    _cardList.add(PictureCard(
      'Image3',
      'The 3rd image in the world',
      'https://unsplash.it/id/${randomNumeric(2)}/600/400',
    ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("CardList"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: null,
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: null,
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: _cardList.length,
          itemBuilder: (BuildContext context, int index) {
            return _cardList[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        // child: Icon(Icons.add),
        child: FaIcon(FontAwesomeIcons.addressBook),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: null,
      ),
    );
  }
}
