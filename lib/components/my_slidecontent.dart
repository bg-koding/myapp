import 'package:flutter/material.dart';

class MySlideContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const MySlideContent({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 120,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 120,
            color: Colors.blue,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 12,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
