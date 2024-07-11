import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../screens/user_details.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
        tag: 'profile picture ${user.id}',
        child: CircleAvatar(
          child: ClipOval(
            child: Image.network(
              user.imageUrl,
            ),
          ),
        ),
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
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UserDetailsScreen(
            user: user,
          ),
        ));
      },
    );
  }
}
