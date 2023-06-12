import 'package:flutter/material.dart';

class EvcBar extends StatelessWidget implements PreferredSizeWidget {
  const EvcBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      titleSpacing: 0,
      title: const Text(
        'Smart EVC Net',
        style: TextStyle(color: Colors.white),
      ),
      leading: const Icon(Icons.electric_bolt),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
    );
  }
}