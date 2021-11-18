import 'dart:convert';

import 'package:final_app/add_person.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'models/person.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Person> listPersons = [];

  get http => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestor de Empleados"),
        actions: [
          InkWell(
            child: Icon(Icons.person_add),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddPerson())).then((value) {
                if (value) {
                  callServiceGetListPersons();
                }
              });
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: listPersons.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: ListTile(
              leading: const Icon(Icons.person),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  //Agregar eliminar
                },
              ),
              title: Text(
                  '${listPersons[index].name} ${listPersons[index].lastName}'),
              subtitle: Text(
                  '${listPersons[index].id} ${listPersons[index].address}${listPersons[index].dateOfAdmission}${listPersons[index].dateOfAdmission}'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.update),
        onPressed: () => callServiceGetListPersons(),
      ),
    );
  }

  callServiceGetListPersons() async {
    var url = Uri.parse('https://6186960dcd8530001765ab39.mockapi.io/');
    Response response = await http.get(url);
    if (response.statusCode >= 200 && response.statusCode <= 300) {
      listPersons = (jsonDecode(response.body) as List).map((personJson) {
        return Person.fromJson(personJson);
      }).toList();

      setState(() {});
    } else {
      print('Hubo un error');
    }
  }
}
