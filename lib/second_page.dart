import 'package:final_app/add_person.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
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
            
          ],),
        ),
      ),
    );
  }
}