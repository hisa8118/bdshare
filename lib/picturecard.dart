import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  final String _name;
  final String _desc;
  final String _picture;

  PictureCard(this._name, this._desc, this._picture);
  //------------------------------------------------------
  // Card Widget Builder
  //------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image.network(_picture),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300')),
            title: Text(_name),
            subtitle: Text(_desc),
          ),
        ],
      ),
    );
  }
}
