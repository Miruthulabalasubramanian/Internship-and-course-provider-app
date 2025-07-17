// course_page.dart
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courses')),
      body: Center(
        child: Text('Courses Available', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
