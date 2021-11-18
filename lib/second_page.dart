import 'package:final_app/add_person.dart';
import 'package:final_app/card_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var listPersons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestor de Empleados"),
        actions: [
          InkWell(
            child: Icon(Icons.person_add),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddPerson()));
            },
          )
        ],
      ),
      body: Container(
        child: ListTile(
          subtitle: Column(children: [
            CardWidget(
              name: 'Juan Manuel',
              lastName: 'Londoño González',
              id: '1',
              DateOfAdmission: '17/11/2021',
              DateOfBirth: '02/06/2003',
              address: 'Cl 79C CR F24',
              wage: '3.000.000',
            )
          ],),
        ),
      ),
    );
  }
}