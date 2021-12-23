import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/utils/constant.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Change My Name";
  // TextEditingController nameController = TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var response = await http.get(Uri.parse(url));
    data = jsonDecode(response.body);
    setState(() {
      
    });
    //print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('First App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app), onPressed: () {
              Navigator.pop(context);
          },
          )
        ],
      ),
      body: data != null
          ? ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text("ID: ${data[index]["id"]}"),
            leading: Image.network(data[index]["url"]),
          );
        },
        itemCount: data.length,
      )
          : Center(child: CircularProgressIndicator(),
      ),
      drawer: MyDrawer(), //imported drawer.dart
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Constant.prefs.setBool("loggedIn", false);
          Navigator.pushReplacementNamed(context, LoginPage.routeName);
          //myText = nameController.text;
          //setState(() {});
        },
        child: Icon(Icons.send),
      ),

    );
  }
}
