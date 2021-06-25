import 'dart:async';

import 'validators.dart';

class Bloc extends Object with Validators {
  final _email = new StreamController<String>();
  final _password = new StreamController<String>();

  //Add data.
  Stream<String> get email => _email.stream.transform(emailValidator);
  Stream<String> get password => _password.stream.transform(passwordValidator);

  //changing data

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}
