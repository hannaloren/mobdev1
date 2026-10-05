import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFF0B0B0B),
  
    body: SafeArea(
      child: SingleChildScrollView(
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
                  // IMPORTANT:
                  // Makes the box grow according to its contents
                  mainAxisSize: MainAxisSize.min,

                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    // =========================================
                    // HEADER
                    // =========================================

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      crossAxisAlignment:
                          CrossAxisAlignment.center,

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
                          crossAxisAlignment:
                              CrossAxisAlignment.end,

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

                    // GOLD DIVIDER

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
                      crossAxisAlignment:
                          CrossAxisAlignment.center,

                      children: [

                        // PHOTO

                        Stack(
                          alignment: Alignment.bottomRight,

                          children: [

                            Container(
                              width: 105,
                              height: 105,

                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(12),

                                border: Border.all(
                                  color:
                                      const Color(0xFFD4AF37),
                                  width: 2,
                                ),
                              ),

                              padding:
                                  const EdgeInsets.all(3),

                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(9),

                                child: Image.asset(
                                  'assets/profile.jpg',
                                  fit: BoxFit.cover,

                                  errorBuilder:
                                      (
                                        context,
                                        error,
                                        stackTrace,
                                      ) {
                                    return const Icon(
                                      Icons.person_outline,
                                      color:
                                          Color(0xFFD4AF37),
                                      size: 50,
                                    );
                                  },
                                ),
                              ),
                            ),

                            // VERIFIED ICON

                            Container(
                              width: 28,
                              height: 28,

                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFFD4AF37),

                                borderRadius:
                                    BorderRadius.circular(7),

                                border: Border.all(
                                  color:
                                      const Color(0xFF111111),
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
                                color:
                                    const Color(0xFFD4AF37),
                              ),

                              const SizedBox(height: 9),

                              const Text(
                                'BS COMPUTER SCIENCE',

                                style: TextStyle(
                                  color:
                                      Color(0xFFD4AF37),
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
                      padding: const EdgeInsets.all(10),

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
                                  value: '2510739',
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
// EDUCATIONAL HISTORY
// =========================================

const Text(
  'HISTORY',
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

  // MORE SPACE INSIDE THE BOX
  padding: const EdgeInsets.fromLTRB(
    14,
    16,
    14,
    10,
  ),

  decoration: BoxDecoration(
    color: const Color(0xFF181818),
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: Colors.white12,
    ),
  ),

  child: Column(
    children: [

      EducationHistoryItem(
        year: '2025 - PRESENT',
        school: 'LORMA COLLEGES',
        course: 'BS Computer Science',
        icon: Icons.school_outlined,
        isFirst: true,
      ),

      EducationHistoryItem(
        year: '2023 - 2025',
        school: 'DMMMSU NLUC - Laboratory High School',
        course: 'STEM Strand',
        icon: Icons.menu_book_outlined,
      ),

      EducationHistoryItem(
        year: '2019 - 2023',
        school: 'Bacnotan NHS',
        course: 'Special Science Class',
        icon: Icons.auto_stories_outlined,
      ),

      EducationHistoryItem(
        year: '2013 - 2019',
        school: 'Bacnotan Elementary School',
        course: 'Elementary Education',
        icon: Icons.child_care_outlined,
        isLast: true,
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
class EducationHistoryItem extends StatelessWidget {
  final String year;
  final String school;
  final String course;
  final IconData icon;
  final bool isFirst;
  final bool isLast;

  const EducationHistoryItem({
    super.key,
    required this.year,
    required this.school,
    required this.course,
    required this.icon,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // =====================================
        // TIMELINE
        // =====================================

        SizedBox(
          width: 35,

          child: Column(
            children: [

              Container(
                width: 30,
                height: 30,

                decoration: BoxDecoration(
                  color: isFirst
                      ? const Color(0xFFD4AF37)
                      : const Color(0xFF242424),

                  shape: BoxShape.circle,

                  border: Border.all(
                    color: const Color(0xFFD4AF37),
                    width: 1,
                  ),
                ),

                child: Icon(
                  icon,
                  size: 15,
                  color: isFirst
                      ? Colors.black
                      : const Color(0xFFD4AF37),
                ),
              ),

              if (!isLast)
                Container(
                  width: 1,
                  height: 48,
                  color: const Color(0xFFD4AF37)
                      .withOpacity(0.35),
                ),
            ],
          ),
        ),

        const SizedBox(width: 12),

        // =====================================
        // EDUCATION DETAILS
        // =====================================

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 12,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  year,
                  style: const TextStyle(
                    color: Color(0xFFD4AF37),
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  school,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  course,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}