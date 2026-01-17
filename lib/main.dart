import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: Text("Pawvera App Ready")))));

class PawveraLogic {
  bool validateLogin(String email, String password) {
    if (email.contains('@') && password.length >= 6) return true;
    return false;
  }

  bool validateAddPet(String name, String breed) {
    if (name.isNotEmpty && breed.isNotEmpty) return true;
    return false;
  }
}
