import 'dart:async';

class Validate {
  final emailTester =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError("Email is not a email");
    }
  });

  //StreamTranfomer<String ,String > is important
  //, it will tell the steam builder what value type (String ,int ,Object) it will recive,
  //second one will tell what kind of value will the sink add

  final passwordTester = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 4) {
      sink.add(password);
    } else {
      sink.addError("Password is less than 3 ");
    }
  });
}
