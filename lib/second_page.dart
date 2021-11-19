import 'dart:convert';

import 'package:final_app/add_person.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'models/person.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Person> listPersons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestor de Empleados'),
        actions: [
          InkWell(
              child: Icon(Icons.person_add),
              onTap: () => callCreatePersonPage(),
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
                    //setState(() {
                    //_futurePerson =
                    //  deleteService(listPersons[index].id!);
                    //});
                    //
                  },
                ),
                title: Text(
                    '${listPersons[index].name!} ${listPersons[index].lastName!}'),
                subtitle: Text(
                    '${listPersons[index].id!} ${listPersons[index].address!}${listPersons[index].dateOfAdmission!}${listPersons[index].dateOfAdmission!}'),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => callServiceGetListPersons(),
        child: Icon(Icons.update),
      ),
    );
  }

  callCreatePersonPage() {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddPerson()))
        .then((value) {
      if (value) {
        callServiceGetListPersons();
      }
    });
  }

  callServiceGetListPersons() async {
    var url =
        Uri.parse('https://6186960dcd8530001765ab39.mockapi.io/Empleados');
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

  Future deleteService(int id) async {
    final response = await http.delete(
        Uri.parse('https://6186960dcd8530001765ab39.mockapi.io/Empleados/$id'));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
