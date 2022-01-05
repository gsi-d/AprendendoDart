int sum(int n1, [int n2]) {
  return n1 + (n2 ?? 5);
}

void main() {
  var n = sum(1);
  print(n);
}
