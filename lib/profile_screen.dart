import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    const sectionTitleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.blueAccent,
      height: 1.5,
    );
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.withAlpha(125),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.blueGrey),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.loose(Size.fromWidth(600)),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //header
                  CircleAvatar(
                    radius: 120,
                    backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/12/16/06/41/avatar-3022215_1280.jpg',
                    ),
                  ),

                  const Text('Jamal', style: sectionTitleStyle),

                  const Text('Software Engineer at Stealth Startup'),

                  //bio
                  const Text(
                    "Bio",
                    style: sectionTitleStyle,
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    """Junior Flutter Developer with hands-on experience in designing, developing, and optimizing cross-platform mobile applications. Proficient in Dart, Flutter, and state management (Riverpod, Provider, BLoC), with a strong understanding of RESTful API integration and clean architecture. Passionate about writing scalable, maintainable code and leveraging best practices to create high-performance, user-friendly applications. Committed to continuous learning and contributing to innovative mobile solutions.""",
                    style: TextStyle(fontStyle: FontStyle.italic),
                    textAlign: TextAlign.justify,
                  ),

                  //skillsList
                  const Text(
                    "Skills",
                    style: sectionTitleStyle,
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    """• Programming Languages: Dart, JavaScript, Java, Python , TypeScript , C++ , C , HTML , CSS ,\n​• Mobile Development & Frameworks: Flutter(Advanced), State Management (Provider | Riverpod | BLoC | Stacked), UI/UX Implementation, Cross-Platform Development\n• Tools & Methodologies: Version Control, Testing(Unit, Widget, Integration), Design Tools (Figma), API Testing (Postman, curl),""",
                    textAlign: TextAlign.start,
                  ),

                  //contactInfo
                  const Text(
                    "Contact Information",
                    style: sectionTitleStyle,
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    "GitHub: http://github.com/jamal-o/",
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    "LinkedIn: https://www.linkedin.com/in/jamaldeen-olasupo",
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
