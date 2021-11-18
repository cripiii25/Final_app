import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, this.name, this.lastName, this.id, this.address, this.DateOfBirth, this.DateOfAdmission, this.wage}) : super(key: key);
  final String? name; 
  final String? lastName; 
  final String? id; 
  final String? address;
  final String? DateOfBirth;
  final String? DateOfAdmission;
  final String? wage;

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
          subtitle: Text('[ ID: $id ]' ' [ Addrres: $address ]' ' [ Date Birth: $DateOfBirth ]' ' [ Wage: $wage ]' ),
        ),
      ),
    );
  }
}