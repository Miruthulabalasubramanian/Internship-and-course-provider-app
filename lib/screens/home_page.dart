import 'package:flutter/material.dart';
import '../widgets/progress_card.dart';
import '../widgets/custom_button.dart'; // Ensure the import is correct

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Ensure children align to the start
          children: [
            // Removed Expanded from ProgressCard if not needed
            ProgressCard(
              title: "Courses Completed",
              progress: 0.75,
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            ProgressCard(
              title: "Internships Undergoing",
              progress: 0.5,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Explore Courses',
              onPressed: () => Navigator.pushNamed(context, '/courses'),
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            CustomButton(
              text: 'Explore Internship Opportunities',
              onPressed: () => Navigator.pushNamed(context, '/internships'),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
