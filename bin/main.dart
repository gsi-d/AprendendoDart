import 'package:meta/meta.dart';

int sum({@required int n1, @required int n2}) => n1 + n2;

void main() {
  var n = sum(n1: 1, n2: 5);
  print(n);
}
