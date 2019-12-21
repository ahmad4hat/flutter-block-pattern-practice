import 'package:flutter/material.dart';
import 'package:hello_world/src/Provider.dart';
import 'package:hello_world/src/StreamTeser.dart';
import './Cake.dart';
import 'dart:async';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("whats up"),
      ),
      body: Column(
        children: <Widget>[
          StreamBuilder(
              builder: (context, snapshot) {
                return TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "your@email.com",
                    labelText: "email",
                    errorText: snapshot.error,
                  ),
                  onChanged: bloc.changeEmail,
                );
              },
              stream: bloc.email),
          StreamBuilder(
              builder: (context, snapshot) {
                return TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "your@email.com",
                    labelText: "password",
                    errorText: snapshot.error,
                  ),
                  onChanged: bloc.changePassword,
                );
              },
              stream: bloc.password)
        ],
      ),
    );
  }
}
