import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Container(
              width: 420,
              decoration: BoxDecoration(
                color: const Color(0xFF111111),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: const Color(0xFFD4AF37),
                  width: 1.2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 25,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(28),

                child: Column(
                  children: [

                    // ==========================================
                    // HEADER
                    // ==========================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        const Text(
                          'H.',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Text(
                          'STUDENT PROFILE',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // ==========================================
                    // PHOTO AREA
                    // ==========================================

                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [

                        Container(
                          width: 140,
                          height: 140,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFD4AF37),
                              width: 3,
                            ),
                          ),

                          padding: const EdgeInsets.all(5),

                          child: ClipOval(
                            child: Image.asset(
                              'assets/profile.jpg',
                              fit: BoxFit.cover,

                              errorBuilder: (
                                context,
                                error,
                                stackTrace,
                              ) {
                                return const Icon(
                                  Icons.person,
                                  color: Color(0xFFD4AF37),
                                  size: 70,
                                );
                              },
                            ),
                          ),
                        ),

                        // Small camera icon
                        Container(
                          width: 38,
                          height: 38,

                          decoration: const BoxDecoration(
                            color: Color(0xFFD4AF37),
                            shape: BoxShape.circle,
                          ),

                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // ==========================================
                    // NAME
                    // ==========================================

                    const Text(
                      'HANNA LOREN OBRA',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: Color(0xFFE6C65C),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Bachelor of Science in Computer Science',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Gold divider
                    Container(
                      width: 60,
                      height: 1,
                      color: const Color(0xFFD4AF37),
                    ),

                    const SizedBox(height: 25),

                    // ==========================================
                    // STUDENT INFORMATION
                    // ==========================================

                    Row(
                      children: [

                        // LEFT COLUMN
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              const ProfileInfo(
                                label: 'STUDENT ID',
                                value: '2026-XXXX',
                              ),

                              const SizedBox(height: 20),

                              const ProfileInfo(
                                label: 'YEAR',
                                value: '2nd Year',
                              ),
                            ],
                          ),
                        ),

                        // RIGHT COLUMN
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              const ProfileInfo(
                                label: 'COURSE',
                                value: 'BSCS',
                              ),

                              const SizedBox(height: 20),

                              const ProfileInfo(
                                label: 'EMAIL',
                                value: 'hannaloren.obra@lorma.edu',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // ==========================================
                    // EDIT PROFILE BUTTON
                    // ==========================================

                    SizedBox(
                      width: double.infinity,
                      height: 50,

                      child: ElevatedButton.icon(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.edit_outlined,
                          size: 18,
                        ),

                        label: const Text(
                          'EDIT PROFILE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFD4AF37),

                          foregroundColor: Colors.black,

                          elevation: 0,

                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      'LORMA COLLEGES',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// ============================================================
// PROFILE INFORMATION
// ============================================================

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          label,

          style: const TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 9,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),

        const SizedBox(height: 5),

        Text(
          value,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}