class Person {
  String? id;
  String? name;
  String? lastName;
  String? address;
  String? dateOfBirth;
  String? dateOfAdmission;
  String? wage; 

  Person({this.id, this.name, this.lastName, this.address, this.dateOfAdmission, this.dateOfBirth, this.wage});

  Person.fromJson(Map<String, dynamic> jsonPerson) {
    id = jsonPerson['id'];
    name = jsonPerson['name'];
    lastName = jsonPerson['lastName'];
    address = jsonPerson['address'];
    dateOfBirth = jsonPerson['dateOfBirth'];
    wage = jsonPerson['wage'];
    dateOfAdmission = jsonPerson['dateOfAdmission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lastName'] = this.lastName;
    data['address'] = this.address;
    data['dateOfBirth'] = this.dateOfBirth;
    data['wage'] = this.wage;
    data['dateOfAdmission'] = this.dateOfAdmission;

    return data;
  }
}