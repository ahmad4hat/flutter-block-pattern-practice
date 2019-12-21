import 'package:flutter/cupertino.dart';

class Cake {
  String cakeName;

  Cake(this.cakeName) {
    print("$cakeName cake has bess created");
    debugPrint("$cakeName cake has bess created");
  }

  // Cake param(String cakeName) {
  //   this.cakeName = cakeName;
  //   print('${this.cakeName} has been created');
  // }
}
