import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key? key,
    required this.myText,
    required this.nameController,
  }) : super(key: key);

  final String myText;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
              "assets/cooking.jpg"
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            myText, //change my name text
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter name here",
                  labelText: "Name"),
            ),
          )
        ],
      ),
    );
  }
}