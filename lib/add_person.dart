import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'models/person.dart';

class AddPerson extends StatefulWidget {
  @override
  _AddPersonState createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  var textEditingControllerName = TextEditingController();
  var textEditingControllerLastName = TextEditingController();
  var textEditingControllerAddress = TextEditingController();
  var textEditingControllerDateOfBirth = TextEditingController();
  var textEditingControllerDateOfAdmission = TextEditingController();
  var textEditingControllerWage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.person,
                size: 75.0,
              ),
              maxRadius: 100.0,
            ),
            TextField(
                controller: textEditingControllerName,
                decoration: const InputDecoration(
                    hintText: 'name',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.0))))),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
                controller: textEditingControllerLastName,
                decoration: const InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.0))))),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
                controller: textEditingControllerAddress,
                decoration: const InputDecoration(
                    hintText: 'Address',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.0))))),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
                controller: textEditingControllerDateOfBirth,
                decoration: const InputDecoration(
                    hintText: 'Date of birth',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.0))))),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
                controller: textEditingControllerWage,
                decoration: const InputDecoration(
                    hintText: 'Wage',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.0))))),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
                controller: textEditingControllerDateOfAdmission,
                decoration: const InputDecoration(
                    hintText: 'Date of Admission',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.0))))),
            const SizedBox(
              height: 15.0,
            ),
            
            ElevatedButton(
                onPressed: () {
                  callServiceCreatePerson(
                      textEditingControllerName.text,
                      textEditingControllerLastName.text,
                      textEditingControllerAddress.text,
                      textEditingControllerDateOfBirth.text,
                      textEditingControllerWage.text,
                      textEditingControllerDateOfAdmission.text);
                },
                child: const Text('Save'))
          ],
        ),
      ),
    );
  }

  void callServiceCreatePerson(
    String name,
    String lastName,
    String address,
    String dateOfBirth,
    String wage,
    String dateOfAdmission,
  ) async {
    var person = Person(
      name: name,
      lastName: lastName,
      address: address,
      dateOfBirth: dateOfBirth,
      wage: wage,
      dateOfAdmission: dateOfAdmission,
    );

    var url = Uri.parse('https://6186960dcd8530001765ab39.mockapi.io/Empleados');
    var personBody = jsonEncode(person);

    Response response = await http.post(
      url,
      body: personBody,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );
    if (response.statusCode >= 200 && response.statusCode <= 300) {
      Navigator.pop(context, true);
    } else {
      print('Hubo un error');
    }
  }
}
