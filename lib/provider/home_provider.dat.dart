import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/home_Model.dart';

class HomeProvider extends ChangeNotifier {
  List<PhotoModel> jsonDataList = [];

  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/jsonData.json');
    List jsonList = jsonDecode(json);
    return jsonList;
  }

  Future<void> fromList() async {
    List jsonList = await jsonParsing();
    jsonDataList = jsonList.map((e) => PhotoModel.fromMap(e)).toList();
    notifyListeners();
  }

  HomeProvider() {
    fromList();
  }
}
