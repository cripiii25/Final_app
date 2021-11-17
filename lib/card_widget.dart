import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, this.name, this.lastName, this.id}) : super(key: key);
  final String? name; 
  final String? lastName; 
  final String? id; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        child: ListTile(
          leading: Icon(Icons.person),
          trailing: Icon(Icons.delete),
          title: Text(
            '$name $lastName'
          ),
          subtitle: Text('$id'),
        ),
      ),
    );
  }
}