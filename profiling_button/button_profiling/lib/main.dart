
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const ButtonActivity(),
    );
  }
}

class ButtonActivity extends StatefulWidget {
  const ButtonActivity({super.key});

  @override
  State<ButtonActivity> createState() => _ButtonActivityState();
}

class _ButtonActivityState extends State<ButtonActivity> {
  final Color gold = const Color(0xFFD4AF37);
  final Color black = const Color(0xFF0B0B0B);

  String message = 'Choose a button above to display information here.';

  void showName() {
    setState(() {
      message = 'My name is Hanna Loren Obra.';
    });
  }

  void showCourse() {
    setState(() {
      message = 'My course is Bachelor of Science in Computer Science.';
    });
  }

  void showEmail() {
    setState(() {
      message = 'My email is hannaloren.obra@lorma.edu.';
    });
  }

  void showInformation() {
    setState(() {
      message =
          'Student ID: 2510739\n\n'
          'Year Level: 2nd Year\n\n'
          'School: Lorma Colleges\n\n'
          'Program: BSCS';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      floatingActionButton: FloatingActionButton(
        onPressed: showInformation,
        backgroundColor: gold,
        foregroundColor: black,
        tooltip: 'Show Information',
        child: const Icon(Icons.info_outline),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Container(
              width: double.infinity,
              constraints: const BoxConstraints(maxWidth: 500),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF111111),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: gold, width: 1.2),
                boxShadow: [
                  BoxShadow(
                    color: gold.withValues(alpha: 0.08),
                    blurRadius: 25,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 3,
                        color: gold,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'INTERACTIVE BUTTONS',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Click the buttons below to see different information.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // ElevatedButton: Show Name
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton.icon(
                      onPressed: showName,
                      icon: const Icon(Icons.person_outline),
                      label: const Text('SHOW NAME'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: gold,
                        foregroundColor: black,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // TextButton: Show Course
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: OutlinedButton.icon(
                      onPressed: showCourse,
                      icon: const Icon(Icons.school_outlined),
                      label: const Text('SHOW COURSE'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: gold,
                        side: BorderSide(color: gold, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // IconButton: Show Email Action
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: gold.withValues(alpha: 0.4),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        IconButton(
                          onPressed: showEmail,
                          tooltip: 'Show Email Action',
                          icon: Icon(
                            Icons.email_outlined,
                            color: gold,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text(
                            'SHOW EMAIL ACTION',
                            style: TextStyle(
                              color: Color(0xFFD4AF37),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // Display message
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(minHeight: 200),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF19160F),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: gold.withValues(alpha: 0.7),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              color: gold,
                              size: 22,
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'DISPLAY MESSAGE',
                              style: TextStyle(
                                color: Color(0xFFD4AF37),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 22),

                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: Text(
                            message,
                            key: ValueKey(message),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                      'LESSON #4  •  FLUTTER BUTTONS',
                      style: TextStyle(
                        color: gold.withValues(alpha: 0.7),
                        fontSize: 10,
                        letterSpacing: 1.5,
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