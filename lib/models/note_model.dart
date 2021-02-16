import 'package:flutter/cupertino.dart';

class NoteModel {
  String priority;
  String title;
  String description;

  NoteModel(
      {@required this.title,
      @required this.description,
      @required this.priority});
}
