import './Cake.dart';
import './Order.dart';
import 'dart:async';

class StreamTester {
  StreamTester() {
    Order order = new Order("hello");
    Order order2 = new Order("a");
    StreamController controller = new StreamController();

    controller.sink.add(order);
    controller.sink.add(order2);

    StreamTransformer streamTransformer =
        new StreamTransformer.fromHandlers(handleData: (cakeType, sink) {
      if (cakeType == "a") {
        sink.add(new Cake("from tranformer"));
      } else if (cakeType == "hello") {
        sink.add(new Cake("hello"));
      }
    });

    controller.stream
        .map((order) => order.type)
        .transform(streamTransformer)
        .listen((cake) => print("whatsup $cake"));
  }
}
