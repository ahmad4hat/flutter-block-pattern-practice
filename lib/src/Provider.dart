import 'package:flutter/material.dart';
import 'dart:async';
import './Bloc.dart';

class Provider extends InheritedWidget {
  final bloc = new Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
