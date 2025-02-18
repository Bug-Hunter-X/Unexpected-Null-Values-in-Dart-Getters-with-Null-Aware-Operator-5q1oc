```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable); 

  int get myVariable {
    // Handle potential null more explicitly
    if (_myVariable == null) {
      print('Variable is null!  Returning a safe default.');
      return 0; // Or throw an exception: throw Exception('myVariable is null'); 
    } else {
      return _myVariable!; // Use ! to assert non-null after check
    }
  }

  void set myVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  var obj = MyClass(null);
  print(obj.myVariable); // Output: Variable is null! Returning a safe default. 0
  obj.myVariable = 10;
  print(obj.myVariable); // Output: 10
}
```