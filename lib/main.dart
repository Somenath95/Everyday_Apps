import 'package:flutter/material.dart';

import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
     
      home: Scaffold(
                
        appBar: AppBar(
          centerTitle: true,
          title: Text('Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName:  Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text('Sam Chucks'),
                ),
                accountEmail: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Society's Name"),
                ),
                currentAccountPicture: IconButton(
                  icon: Icon(Icons.person, color: Colors.white, size: 50,),
                  onPressed: () {},
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Today's Visitors"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notice Board'),
                onTap: () {},
              ),
              Padding(padding: EdgeInsets.only(top: 150),),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Your Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: MainPage(),
      ),
    );
  }
}