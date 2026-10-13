
import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

const Color backgroundColor = Color(0xFF0B0B0B);
const Color cardColor = Color(0xFF111111);
const Color goldColor = Color(0xFFD4AF37);
const Color textColor = Color(0xFFF5F5F5);
const Color mutedColor = Color(0xFFB8B8B8);

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: goldColor,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() =>
      _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  String displayedMessage = 'Choose a button to display information.';

  void showName() {
    setState(() {
      displayedMessage = 'My name is Hanna Loren Obra.';
    });
  }

  void showCourse() {
    setState(() {
      displayedMessage = 'I am taking BS Computer Science.';
    });
  }

  void showEmail() {
    setState(() {
      displayedMessage = 'Email: hannaloren.obra@lorma.edu';
    });
  }

  void showInformation() {
    setState(() {
      displayedMessage =
          'Student ID: 2510739\n'
          'Year Level: 2nd Year\n'
          'Program: BSCS\n'
          'School: Lorma Colleges';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showInformation,
        backgroundColor: goldColor,
        foregroundColor: backgroundColor,
        tooltip: 'Show Information',
        child: const Icon(Icons.info_outline),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Container(
              width: 430,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: goldColor,
                  width: 1,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 30,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'H.',
                        style: TextStyle(
                          color: goldColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'STUDENT PROFILE',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'LORMA COLLEGES',
                            style: TextStyle(
                              color: goldColor,
                              fontSize: 10,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),
                  const Divider(color: goldColor),
                  const SizedBox(height: 24),

                  // Profile picture
                  Center(
                    child: Container(
                      width: 115,
                      height: 115,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: goldColor,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/profile.jpg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const ColoredBox(
                              color: Color(0xFF29231A),
                              child: Icon(
                                Icons.person,
                                size: 65,
                                color: goldColor,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Name and course
                  const Center(
                    child: Text(
                      'HANNA LOREN OBRA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Center(
                    child: Text(
                      'BS COMPUTER SCIENCE',
                      style: TextStyle(
                        color: goldColor,
                        fontSize: 12,
                        letterSpacing: 2,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Center(
                    child: Text(
                      'Computer Science Student',
                      style: TextStyle(
                        color: mutedColor,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),
                  const Divider(color: goldColor),
                  const SizedBox(height: 18),

                  // Student information
                  const Text(
                    'STUDENT INFORMATION',
                    style: TextStyle(
                      color: goldColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const ProfileInfo(
                    label: 'Student ID',
                    value: '2510739',
                  ),
                  const ProfileInfo(
                    label: 'Year Level',
                    value: '2nd Year',
                  ),
                  const ProfileInfo(
                    label: 'Email',
                    value: 'hannaloren.obra@lorma.edu',
                  ),
                  const ProfileInfo(
                    label: 'Program',
                    value: 'BSCS',
                  ),

                  const SizedBox(height: 24),
                  const Divider(color: goldColor),
                  const SizedBox(height: 18),

                  // Lesson 4 buttons
                  const Text(
                    'Press the buttons below to display information:',
                    style: TextStyle(
                      color: goldColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // ElevatedButton: Show Name
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: showName,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: goldColor,
                        foregroundColor: backgroundColor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                      child: const Text('Show Name'),
                    ),
                  ),

                  // TextButton: Show Course
                  Center(
                    child: TextButton(
                      onPressed: showCourse,
                      child: const Text(
                        'Show Course',
                        style: TextStyle(
                          color: goldColor,
                        ),
                      ),
                    ),
                  ),

                  // IconButton: Show Email Action
                  Center(
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: showEmail,
                          tooltip: 'Show Email',
                          icon: const Icon(
                            Icons.email_outlined,
                            color: goldColor,
                            size: 30,
                          ),
                        ),
                        const Text(
                          'Show Email Action',
                          style: TextStyle(
                            color: mutedColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Message displayed using setState()
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xFF211C12),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: goldColor.withValues(alpha: 0.6),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'DISPLAY MESSAGE',
                          style: TextStyle(
                            color: goldColor,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          displayedMessage,
                          style: const TextStyle(
                            color: textColor,
                            fontSize: 14,
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),
                  const Divider(color: goldColor),
                  const SizedBox(height: 18),

                  // Educational history
                  const Text(
                    'EDUCATIONAL HISTORY',
                    style: TextStyle(
                      color: goldColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const EducationHistoryItem(
                    year: '2025 - PRESENT',
                    school: 'LORMA COLLEGES',
                    course: 'BS Computer Science',
                  ),

                  const EducationHistoryItem(
                    year: '2023 - 2025',
                    school: 'DMMMSU NLUC - Laboratory High School',
                    course: 'STEM Strand',
                  ),

                  const EducationHistoryItem(
                    year: '2019 - 2023',
                    school: 'Bacnotan NHS',
                    course: 'Special Science Class',
                  ),

                  const EducationHistoryItem(
                    year: '2013 - 2019',
                    school: 'Bacnotan Elementary School',
                    course: 'Elementary Education',
                  ),

                  const SizedBox(height: 16),

                  const Center(
                    child: Text(
                      'LEARN • GROW • CREATE',
                      style: TextStyle(
                        color: goldColor,
                        fontSize: 10,
                        letterSpacing: 2,
                      ),
                    ),
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

class ProfileInfo extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfo({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 105,
            child: Text(
              label,
              style: const TextStyle(
                color: mutedColor,
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EducationHistoryItem extends StatelessWidget {
  final String year;
  final String school;
  final String course;

  const EducationHistoryItem({
    super.key,
    required this.year,
    required this.school,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: goldColor,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 2,
                height: 65,
                color: goldColor.withValues(alpha: 0.4),
              ),
            ],
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: const TextStyle(
                    color: goldColor,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  school,
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  course,
                  style: const TextStyle(
                    color: mutedColor,
                    fontSize: 12,
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