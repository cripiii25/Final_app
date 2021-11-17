import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee"),
      ),
      body: ListView(
        children: [
          CircleAvatar(
            child: Icon(Icons.person, size: 75.0,),
            maxRadius: 100.0,
          ),
          TextFieldWidget(
            icon:Icons.person,
            labelText: 'First name',
          ),
          TextFieldWidget(
            icon:Icons.person,
            labelText: 'Lastname',
          ),
          TextFieldWidget(
            icon:Icons.credit_card,
            labelText: 'Identification',
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {

  final IconData icon; 
  final String labelText; 
  const TextFieldWidget({
    Key? key,
    required this.icon,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border:OutlineInputBorder(),
          prefix: Icon(icon),
          labelText: labelText,
        ),
      ),
    );
  }
}