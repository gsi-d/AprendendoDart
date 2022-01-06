import 'dart:convert';

import 'package:meta/meta.dart';

int sum({@required int n1, @required int n2}) => n1 + n2;

abstract class UserCase {
  //Interface em DART
  void method();
}

Future<void> main() async {
  var u1 = UserModel('Rodriguinho', 'Manguinho');
  var u2 = UserModel('Rodriguinho', 'Manguinho');
  print(identical(u1, u2));
  u1.save().then((_) => print(u1.fullName));

  List<int> list = [1, 2, 3]; //SET = outro tipo de lista - usar { }
  var map = {'a': 1, 'b': 2, 'c': '3'};
}

//@Immutable -- Impede que os atributos da classe sejam alterados quando forem instanciados
class UserModel {
  String firstName;
  String lastName;
  String fullName; //_fullName exemplo de um atributo privado

  UserModel(this.firstName, this.lastName) : fullName = '$firstName $lastName';

  UserModel.fromJson(Map json)
      : firstName = json['firstName'],
        lastName = json['lastName'];

  factory UserModel.fromJsonString(String json) {
    final map = jsonDecode(json);
    return UserModel.fromJson(map);
  }

  Future<void> save() async {
    await Future.delayed(Duration(seconds: 2));
  }
}
