// intern_page.dart
import 'package:flutter/material.dart';

class InternPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Internships')),
      body: Center(
        child: Text('Internship Opportunities', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
