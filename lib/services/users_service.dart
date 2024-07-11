import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

Future<List<UserModel>> fetchUsers() async {
  const url = 'https://jsonplaceholder.typicode.com/users';
  final value = await http.get(Uri.parse(url));
  final data = jsonDecode(value.body) as List;
  return [
    for (final x in data) UserModel.fromMap(x),
  ];
}
