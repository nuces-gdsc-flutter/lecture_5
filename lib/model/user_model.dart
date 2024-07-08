import 'package:flutter/material.dart';

class UserModel {
  String name;
  String id;
  String about;
  String phoneNumber;
  late Image image;

  UserModel({
    required this.name,
    required this.id,
    required this.about,
    required this.phoneNumber,
  }) {
    image = Image.network('https://i.pravatar.cc/300?u=$id');
  }
}
