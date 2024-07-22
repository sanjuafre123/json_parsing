import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/screen/Lec-8.2/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  List<UserModel> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/userData.json');
    List user = jsonDecode(json);
    userList = user
        .map(
          (e) => UserModel.fromJson(e),
        )
        .toList();
  }

  UserProvider() {
    jsonParsing();
  }
}
