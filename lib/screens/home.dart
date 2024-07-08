import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:user_listings_app/components/user_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('User Listings')),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.only(top: 8),
        child: SearchableList<UserTile>(
          initialList: [const UserTile()],
          filter: (query) {
            if (query == 'a') {
              return [];
            }
            return [UserTile()];
          },
          emptyWidget: Center(
              child: const Text(
            'No User Found.',
            style: TextStyle(fontSize: 20),
          )),
          inputDecoration: const InputDecoration(
            label: Text('Search User'),
            border: OutlineInputBorder(),
          ),
          itemBuilder: (UserTile item) {
            return item;
          },
        ),
      ),
    );
  }
}
