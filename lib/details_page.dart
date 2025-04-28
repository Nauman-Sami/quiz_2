import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String courseName;
  final String courseImage;

  DetailsPage({required this.courseName, required this.courseImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'courseImage',
            child: Image.network(
              courseImage,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            courseName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // You can add more course details here
        ],
      ),
    );
  }
}
