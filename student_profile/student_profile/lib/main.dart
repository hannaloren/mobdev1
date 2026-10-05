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
              width: 430,

              decoration: BoxDecoration(
                color: const Color(0xFF111111),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFFD4AF37),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(28),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // =========================================
                    // HEADER
                    // =========================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [

                        const Text(
                          'H.',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [

                            Text(
                              'STUDENT PROFILE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              'LORMA COLLEGES',
                              style: TextStyle(
                                color: Color(0xFFD4AF37),
                                fontSize: 8,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color(0xFFD4AF37),
                    ),

                    const SizedBox(height: 28),

                    // =========================================
                    // PROFILE HEADER
                    // =========================================

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [

                        // PHOTO
                        Stack(
                          alignment: Alignment.bottomRight,

                          children: [

                            Container(
                              width: 105,
                              height: 105,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xFFD4AF37),
                                  width: 2,
                                ),
                              ),

                              padding: const EdgeInsets.all(3),

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9),

                                child: Image.asset(
                                  'assets/profile.jpg',
                                  fit: BoxFit.cover,

                                  errorBuilder:
                                      (context, error, stackTrace) {
                                    return const Icon(
                                      Icons.person_outline,
                                      color: Color(0xFFD4AF37),
                                      size: 50,
                                    );
                                  },
                                ),
                              ),
                            ),

                            Container(
                              width: 28,
                              height: 28,

                              decoration: BoxDecoration(
                                color: const Color(0xFFD4AF37),
                                borderRadius:
                                    BorderRadius.circular(7),
                                border: Border.all(
                                  color: const Color(0xFF111111),
                                  width: 2,
                                ),
                              ),

                              child: const Icon(
                                Icons.verified_outlined,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(width: 20),

                        // NAME + COURSE
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              const Text(
                                'HANNA LOREN OBRA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.7,
                                ),
                              ),

                              const SizedBox(height: 8),

                              Container(
                                width: 40,
                                height: 2,
                                color: const Color(0xFFD4AF37),
                              ),

                              const SizedBox(height: 9),

                              const Text(
                                'BS COMPUTER SCIENCE',
                                style: TextStyle(
                                  color: Color(0xFFD4AF37),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                              ),

                              const SizedBox(height: 5),

                              const Text(
                                'Computer Science Student',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // =========================================
                    // STUDENT INFORMATION
                    // =========================================

                    const Text(
                      'STUDENT INFORMATION',
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Container(
                      width: double.infinity,

                      padding: const EdgeInsets.all(16),

                      decoration: BoxDecoration(
                        color: const Color(0xFF181818),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white12,
                        ),
                      ),

                      child: Column(
                        children: [

                          Row(
                            children: [

                              Expanded(
                                child: ProfileInfo(
                                  icon: Icons.badge_outlined,
                                  label: 'STUDENT ID',
                                  value: '2026-XXXX',
                                ),
                              ),

                              Expanded(
                                child: ProfileInfo(
                                  icon: Icons.school_outlined,
                                  label: 'YEAR LEVEL',
                                  value: '2nd Year',
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 18),

                          Container(
                            height: 1,
                            color: Colors.white10,
                          ),

                          const SizedBox(height: 18),

                          Row(
                            children: [

                              Expanded(
                                child: ProfileInfo(
                                  icon: Icons.email_outlined,
                                  label: 'EMAIL',
                                  value:
                                      'hannaloren.obra@lorma.edu',
                                ),
                              ),

                              Expanded(
                                child: ProfileInfo(
                                  icon: Icons.account_balance_outlined,
                                  label: 'PROGRAM',
                                  value: 'BSCS',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    // =========================================
                    // EDIT PROFILE BUTTON
                    // =========================================

                    SizedBox(
                      width: double.infinity,
                      height: 48,

                      child: ElevatedButton.icon(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.edit_outlined,
                          size: 17,
                        ),

                        label: const Text(
                          'EDIT PROFILE',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFD4AF37),

                          foregroundColor: Colors.black,

                          elevation: 0,

                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    // =========================================
                    // FOOTER
                    // =========================================

                    Center(
                      child: Text(
                        'LORMA COLLEGES • COMPUTER SCIENCE',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 8,
                          letterSpacing: 1.3,
                        ),
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
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Container(
          width: 30,
          height: 30,

          decoration: BoxDecoration(
            color: const Color(0xFFD4AF37).withOpacity(0.1),
            borderRadius: BorderRadius.circular(7),
          ),

          child: Icon(
            icon,
            color: const Color(0xFFD4AF37),
            size: 15,
          ),
        ),

        const SizedBox(width: 9),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(
                label,

                style: const TextStyle(
                  color: Colors.white38,
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}