import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        foregroundImage: NetworkImage("https://i.pravatar.cc/150?u=1"),
      ),
      title: const Text(
        'Joe',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: const Text(
        'In a world far away',
        style: TextStyle(fontSize: 13.5),
      ),
      onTap: () {},
    );
  }
}
