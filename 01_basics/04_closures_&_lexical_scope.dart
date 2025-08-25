Function makeAdder(int addBy) {
  return (int i) => addBy + i; // Closure
}

void main() {
  var add2 = makeAdder(2);
  var add5 = makeAdder(5);

  print(add2(3)); // Output : 5
  print(add5(3)); // Output : 8
}
