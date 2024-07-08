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
            return users
                .where((userModal) => userModal.name
                    .toLowerCase()
                    .startsWith(query.toLowerCase()))
                .toList();
          },
          emptyWidget: const SizedBox(
            width: double.infinity,
            child: Text(
              'No User Found.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
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
