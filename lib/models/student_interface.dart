import 'package:attendencemanagementsystem/utilitiesdb/database_helper.dart';
import 'package:flutter/cupertino.dart';

class StudentInterface {
  String name;
  int rollNo;
  StudentInterface({this.name, this.rollNo});


  Map<String, dynamic> toMap() {
      var map = <String, dynamic>{
      DatabaseHelper.name: name,
      DatabaseHelper.rollNo: rollNo,
    };
      return map;
  }

  StudentInterface.fromMap(Map<String , dynamic> map) {
    rollNo = map[DatabaseHelper.rollNo];
    name = map[DatabaseHelper.name];
  }
}