import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //adds a side menu drawer with menu icon
      child: ListView(
      padding: const EdgeInsets.all(0),
        children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Michael Dehaney"),
          accountEmail: Text("michael.dehaney31@gmail.com"),
          currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmxhY2slMjBtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
          )
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Michael Dehaney"),
          subtitle: Text("Software Developer"),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text("Email"),
          subtitle: Text("michael.dehaney31@gmail.com"),
          trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}