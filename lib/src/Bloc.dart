import 'dart:async';
import './Validate.dart';

class Bloc extends Object with Validate {
  final _email = new StreamController<String>();
  final _password = new StreamController<String>();

  Stream<String> get email => _email.stream.transform(emailTester);
  Function(String) get changeEmail => _email.sink.add;

  Stream<String> get password => _password.stream;
  Function(String) get changePassword => _password.sink.add;
}
