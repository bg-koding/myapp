import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const MyDrawerTile({
    required this.icon,
    required this.title,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: selected ? Colors.black : Colors.grey,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.black : Colors.grey,
        ),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }
}
