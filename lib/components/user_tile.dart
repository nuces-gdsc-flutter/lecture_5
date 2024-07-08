import 'package:flutter/material.dart';
import 'package:user_listings_app/model/user_model.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: user.image.image,
      ),
      title: Text(
        user.name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        user.about,
        style: const TextStyle(fontSize: 13.5),
      ),
      onTap: () {},
    );
  }
}
