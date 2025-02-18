```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable); 

  int get myVariable => _myVariable ?? 0; // Return 0 if null

  void set myVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  var obj = MyClass(null);
  print(obj.myVariable); // Output: 0
  obj.myVariable = 10;
  print(obj.myVariable); // Output: 10
}
```