import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/screen/Lec-8.3/model/post_model.dart';

class PostProvider extends ChangeNotifier
{
  late PostModal postModal;

  Future<void> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/post.json');
    final response = jsonDecode(json);
    postModal = PostModal.fromJson(response);
    notifyListeners();
  }

  PostProvider()
  {
    jsonParsing();
  }
}
