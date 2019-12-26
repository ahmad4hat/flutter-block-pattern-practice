import 'dart:async';
import './Validate.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validate {
  final _email = new BehaviorSubject<String>();
  final _password = new BehaviorSubject<String>();

  //Observeable.combineleastest 2 does not exist , combineLatestStram take an Array(iterable as input) and
  // a function that you want to excute
  Stream<bool> get submitValid => CombineLatestStream([email, password], (e) {
        return true;
      });

  Stream<String> get email => _email.stream.transform(emailTester);
  Function(String) get changeEmail => _email.sink.add;

  Stream<String> get password => _password.stream.transform(passwordTester);
  Function(String) get changePassword => _password.sink.add;
}
