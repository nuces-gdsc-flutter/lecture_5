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

final List<UserModel> users = [
  UserModel(
    name: 'Marissa Mayer',
    id: '1',
    about: 'In a rush to catch a plane',
    phoneNumber: '+92 335 8712692',
  ),
  UserModel(
    name: 'Joe Belfiore',
    id: '2',
    about: 'In a world far away',
    phoneNumber: '+92 338 1235095',
  ),
  UserModel(
    name: 'Jeff Bezos',
    id: '17',
    about: 'Counting Zeroes',
    phoneNumber: '+92 338 9061252',
  ),
  UserModel(
    name: 'Bill Gates',
    id: '14',
    about: 'What am I doing here?',
    phoneNumber: '+92 331 6289054',
  ),
  UserModel(
    name: 'Sundar Pichai',
    id: '5',
    about: 'Do androids dream of electric sheep?',
    phoneNumber: '+92 332 8749912',
  ),
];
