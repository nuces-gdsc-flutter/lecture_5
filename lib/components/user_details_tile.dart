import 'package:flutter/material.dart';

class UserDetailTile extends StatelessWidget {
  const UserDetailTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
  });
  final String title, subtitle;
  final Icon leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle),
    );
  }
}
