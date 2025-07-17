import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';
import '../styles/app_button_styles.dart';

class CourseProviderHome extends StatelessWidget {
  final List<Map<String, dynamic>> uploadedCourses = [
    {"title": "Flutter for Beginners", "enrolled": 150, "isPaid": false},
    {"title": "Advanced Dart", "enrolled": 85, "isPaid": true},
    {"title": "UI Design Basics", "enrolled": 200, "isPaid": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          // Sidebar Navigation
          Container(
            width: 200,
            color: AppColors.primary,
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text("MyStudy", style: AppTextStyles.logo),
                SizedBox(height: 40),
                _buildSidebarButton(Icons.dashboard, "Dashboard"),
                _buildSidebarButton(Icons.book, "Courses"),
                _buildSidebarButton(Icons.event, "Events"),
                _buildSidebarButton(Icons.assignment, "Assignments"),
                _buildSidebarButton(Icons.settings, "Settings"),
                _buildSidebarButton(Icons.logout, "Logout"),
              ],
            ),
          ),

          // Main Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search bar and welcome message
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good Morning, James!",
                        style: AppTextStyles.heading,
                      ),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search courses",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Upload/Create New Course Button
                  ElevatedButton.icon(
                    icon: Icon(Icons.add, color: Colors.white),
                    label: Text("Upload or Create New Course"),
                    style: AppButtonStyles.primaryButton,
                    onPressed: () {
                      print("Navigate to course creation screen");
                    },
                  ),
                  SizedBox(height: 20),

                  // Uploaded Courses Section
                  Text("Courses Already Uploaded", style: AppTextStyles.logo),
                  SizedBox(height: 10),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: uploadedCourses.length,
                      itemBuilder: (context, index) {
                        final course = uploadedCourses[index];
                        return _buildCourseCard(course);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarButton(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          alignment: Alignment.centerLeft,
        ),
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        label: Text(label, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildCourseCard(Map<String, dynamic> course) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course["title"],
              style: AppTextStyles.body.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text("Students Enrolled: ${course["enrolled"]}",
                style: AppTextStyles.body),
            SizedBox(height: 8),
            Row(
              children: [
                Text("Course Type: ", style: AppTextStyles.body),
                Text(
                  course["isPaid"] ? "Paid" : "Free",
                  style: AppTextStyles.body.copyWith(
                    color: course["isPaid"] ? Colors.green : Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
