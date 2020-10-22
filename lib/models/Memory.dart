import 'dart:ffi';

class Memory{
  String _value = '0';
  double _first = 0.0;
  List<String> _result;
  String _operation;

  String get value{
    return _value;
  }

  void appliyCommand(String comand) {
    switch(comand){
      case 'C':
        _fullClear();
        break;
      case '%':
        break;
      case '+':
        _first = double.parse(_value);
        _value = '0';
        _operation = '+';
        break;
      case '-':
        if(_value == '0'){
          _value = '-';
        }else{
          _first = double.parse(_value);
          _value = '0';
          _operation = '-';
        }

        break;
      case 'x':
        _first = double.parse(_value);
        _value = '0';
        _operation = 'x';
        break;
      case '/':
        _first = double.parse(_value);
        _value = '0';
        _operation = '/';
        break;
      case '=':
        _equal();
        break;
      default:
        if(_value == "0")
          _value = comand;
        else
          _value += comand;
    }


  }
  _fullClear(){
    _value = '0';
    _first = 0.0;
  }
  _sum(){
    _value = (_first + double.parse(_value)).toString();
    _value = _valor();
  }

  _subtraction(){
    _value = (_first - double.parse(_value)).toString();
    _value = _valor();
  }

  _dicision(){
    _value = (_first / double.parse(_value)).toString();
    _value = _valor();
  }

  _multiplication(){
    _value = (_first * double.parse(_value)).toString();
    _value = _valor();
    print("wreewrwerrew");
  }
  _equal(){
    switch(_operation){
      case '+':
        _sum();
        break;
      case '-':
        _subtraction();
        break;
      case 'x':
        _multiplication();
        print("jardel");
        break;
      case '/':
        _dicision();
        break;
    }

  }

  String _valor(){
    _result = _value.split(".");
    if(_result[1] == '0')
      return _value = _result[0];
    return _value;
  }

}

