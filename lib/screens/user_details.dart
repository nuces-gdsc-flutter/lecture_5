import 'package:flutter/material.dart';
import 'package:user_listings_app/components/user_details_tile.dart';
import 'package:user_listings_app/model/user_model.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Center(
              child: Hero(
                tag: 'profile picture ${user.id}',
                child: ClipOval(
                  child: CircleAvatar(
                    radius: 90,
                    child: Image.network(
                      user.imageUrl,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            UserDetailTile(
              title: user.name,
              subtitle: 'Name',
              leading: const Icon(Icons.person_2_outlined),
            ),
            const Divider(),
            UserDetailTile(
              title: user.about,
              subtitle: 'About',
              leading: const Icon(Icons.info_outline),
            ),
            const Divider(),
            UserDetailTile(
              title: user.phoneNumber,
              subtitle: 'Phone',
              leading: const Icon(Icons.phone_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
