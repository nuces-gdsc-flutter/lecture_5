import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:user_listings_app/components/user_tile.dart';
import 'package:user_listings_app/model/user_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<UserModel> users = [
    UserModel(
      name: 'Marissa Mayer',
      id: '1',
      about: 'In a rush to catch a plane',
      phoneNumber: '+923358712692',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('User Listings')),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.only(top: 8),
        child: SearchableList<UserModel>(
          initialList: users,
          filter: (query) {
            if (query == 'a') {
              return [];
            }
            return users;
          },
          emptyWidget: const Center(
            child: Text(
              'No User Found.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          inputDecoration: const InputDecoration(
            label: Text('Search User'),
            border: OutlineInputBorder(),
          ),
          itemBuilder: (UserModel userModel) {
            return UserTile(user: userModel);
          },
        ),
      ),
    );
  }
}
