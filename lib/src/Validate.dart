import 'dart:async';

class Validate {
  final emailTester =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError("error is bad");
    }
  });

  //StreamTranfomer<String ,String > is important
  //, it will tell the steam builder what value type (String ,int ,Object) it will recive,
  //second one will tell what kind of value will the sink add

  StreamTransformer streamTransformer =
      new StreamTransformer.fromHandlers(handleData: (cakeType, sink) {
    if (cakeType == "a") {
      sink.add("whats");
    } else if (cakeType == "hello") {
      sink.add("hello");
    }
  });
}
