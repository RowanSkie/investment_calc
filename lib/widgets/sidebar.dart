// sidebar that will show all features of the application.

// Author of this code is Bryan Maniago

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
              leading: Icon(Icons.water_damage),
              title: Text('Home'),
              onTap: () => {Navigator.pushNamed(context, '/home')}),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.pushNamed(context, '/profile')},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('My Assets'),
            onTap: () => {Navigator.pushNamed(context, '/assets')},
          ),
          ListTile(
            leading: Icon(Icons.add_to_queue),
            title: Text('Add New Asset'),
            onTap: () => {Navigator.pushNamed(context, '/addsets')},
          ),
          ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                Navigator.pushNamed(context, '/calc');
              }),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.pushNamed(context, '/settings')},
          ),
        ],
      ),
    );
  }
}
