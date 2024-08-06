import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/components/my_drawertile.dart';
import 'package:myapp/components/my_slidecontent.dart';

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  MySlideContent(
                    title: 'Title 1',
                    subtitle: 'Subtitle 1',
                    image: 'assets/images/sliders/1.jpg',
                  ),
                  SizedBox(width: 24),
                  MySlideContent(
                    title: 'Title 2',
                    subtitle: 'Subtitle 2',
                    image: 'assets/images/sliders/2.jpg',
                  ),
                  SizedBox(width: 24),
                  MySlideContent(
                    title: 'Title 3',
                    subtitle: 'Subtitle 3',
                    image: 'assets/images/sliders/3.jpg',
                  ),
                  SizedBox(width: 24),
                  MySlideContent(
                    title: 'Title 4',
                    subtitle: 'Subtitle 4',
                    image: 'assets/images/sliders/4.jpg',
                  ),
                  SizedBox(width: 24),
                  MySlideContent(
                    title: 'Title 5',
                    subtitle: 'Subtitle 5',
                    image: 'assets/images/sliders/5.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Popular Category',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xE72B2B2B),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
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
