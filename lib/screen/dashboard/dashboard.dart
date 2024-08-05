import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/components/my_drawertile.dart';

class DashbaordScreen extends StatefulWidget {
  const DashbaordScreen({super.key});

  @override
  State<DashbaordScreen> createState() => _DashbaordScreenState();
}

class _DashbaordScreenState extends State<DashbaordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dashboard'),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/avatar/1.jpg'),
          ),
          SizedBox(width: 24),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/avatar/1.jpg'),
                  ),
                  Text(
                    'User Name',
                    style: TextStyle(
                      color: Color(0xFF0096B1),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'User Email',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            MyDrawerTile(icon: Icons.home, title: 'Home', selected: false),
          ],
        ),
      ),
    );
  }
}
