import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';

import '../components/user_tile.dart';
import '../model/user_model.dart';
import '../services/users_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('User Listings'),
        ),
      ),
      body: FutureBuilder(
        future: fetchUsers(),
        builder: (context, snap) {
          if (snap.hasError) {
            return Center(
              child: Text(snap.error.toString()),
            );
          }

          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final users = snap.requireData;

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.only(top: 8),
            child: SearchableList<UserModel>(
              initialList: users,
              filter: (query) {
                return users.where((userModal) => userModal.name.toLowerCase().startsWith(query.toLowerCase())).toList();
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
                return UserTile(
                  user: userModel,
                  key: Key(userModel.id),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
