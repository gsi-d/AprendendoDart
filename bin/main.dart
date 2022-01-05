import 'dart:convert';

import 'package:meta/meta.dart';

int sum({@required int n1, @required int n2}) => n1 + n2;

void main() {
  var n = sum(n1: 1, n2: 5);
  print(n);
}

//@Immutable -- Impede que os atributos da classe sejam alterados quando forem instanciados
class UserModel {
  String firstName;
  String lastName;
  String fullName;

  UserModel(this.firstName, this.lastName) : fullName = '$firstName $lastName';

  UserModel.fromJson(Map json)
      : firstName = json['firstName'],
        lastName = json['lastName'];

  factory UserModel.fromJsonString(String json) {
    final map = jsonDecode(json);
    return UserModel.fromJson(map);
  }
}
