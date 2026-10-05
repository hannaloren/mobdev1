import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatefulWidget {
  const BusinessCardScreen({super.key});

  @override
  State<BusinessCardScreen> createState() =>
      _BusinessCardScreenState();
}

class _BusinessCardScreenState
    extends State<BusinessCardScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  bool isFront = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  void flipCard() {
    if (isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }

    setState(() {
      isFront = !isFront;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080808),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: flipCard,

              child: AnimatedBuilder(
                animation: _animation,

                builder: (context, child) {

                  final angle =
                      _animation.value * math.pi;

                  final showFront =
                      angle < math.pi / 2;

                  return Transform(
                    alignment: Alignment.center,

                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(angle),

                    child: showFront
                        ? const FrontBusinessCard()
                        : Transform(
                            alignment: Alignment.center,
                            transform:
                                Matrix4.rotationY(math.pi),
                            child:
                                const BackBusinessCard(),
                          ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Text(
              isFront
                  ? 'Tap to view services & contact'
                  : 'Tap to return',
              style: const TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 11,
                letterSpacing: 1,
              ),
            ),

            const SizedBox(height: 6),

            const Icon(
              Icons.touch_app_outlined,
              color: Color(0xFFD4AF37),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}


// ============================================================
// FRONT BUSINESS CARD
// ============================================================

class FrontBusinessCard extends StatelessWidget {
  const FrontBusinessCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 336,
      height: 192,

      decoration: BoxDecoration(
        color: const Color(0xFF0B0B0B),

        borderRadius: BorderRadius.circular(16),

        border: Border.all(
          color: const Color(0xFFD4AF37),
          width: 1.2,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 25,
            offset: const Offset(0, 12),
          ),
        ],
      ),

      child: Stack(
        children: [

          // Decorative gold circle
          Positioned(
            right: -55,
            top: -55,

            child: Container(
              width: 135,
              height: 135,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                border: Border.all(
                  color: const Color(0xFFD4AF37)
                      .withOpacity(0.18),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              14,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                // =========================================
                // HEADER
                // =========================================

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    const Text(
                      'H.',
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Text(
                      'DEVELOPER • DESIGNER',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 7,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // =========================================
                // MAIN CONTENT
                // =========================================

                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,

                  children: [

                    // PHOTO
                    Container(
                      width: 68,
                      height: 68,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        border: Border.all(
                          color: const Color(0xFFD4AF37),
                          width: 2,
                        ),
                      ),

                      padding: const EdgeInsets.all(3),

                      child: ClipOval(
                        child: Image.asset(
                          'assets/profile.jpg',
                          fit: BoxFit.cover,

                          errorBuilder:
                              (context, error, stackTrace) {

                            return const Icon(
                              Icons.person_outline,
                              color: Color(0xFFD4AF37),
                              size: 35,
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // TEXT
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                          const Text(
                            'HANNA LOREN OBRA',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.7,
                            ),
                          ),

                          const SizedBox(height: 4),

                          const Text(
                            'COMPUTER SCIENCE STUDENT',
                            style: TextStyle(
                              color: Color(0xFFD4AF37),
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),

                          const SizedBox(height: 9),

                          const Text(
                            'LET\'S BUILD SOMETHING TOGETHER.',
                            style: TextStyle(
                              color: Color(0xFFE6C65C),
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),

                          const SizedBox(height: 4),

                          const Text(
                            'Turning ideas into functional '
                            'and meaningful digital experiences.',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 7.5,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                // =========================================
                // SKILLS
                // =========================================

                Row(
                  children: [

                    const Text(
                      'SKILLS',
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color(0xFFD4AF37)
                            .withOpacity(0.5),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: const [

                    MiniSkill(text: 'JAVA'),

                    MiniSkill(text: 'HTML'),

                    MiniSkill(text: 'CSS'),

                    MiniSkill(text: 'JAVASCRIPT'),

                    MiniSkill(text: 'UI/UX'),

                    MiniSkill(text: 'FIGMA'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// ============================================================
// BACK BUSINESS CARD
// ============================================================

class BackBusinessCard extends StatelessWidget {
  const BackBusinessCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 336,
      height: 192,

      decoration: BoxDecoration(
        color: const Color(0xFF0B0B0B),

        borderRadius: BorderRadius.circular(16),

        border: Border.all(
          color: const Color(0xFFD4AF37),
          width: 1.2,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 25,
            offset: const Offset(0, 12),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          18,
          15,
          18,
          12,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            // =========================================
            // SERVICES
            // =========================================

            Row(
              children: [

                const Text(
                  'WHAT I CAN DO',
                  style: TextStyle(
                    color: Color(0xFFD4AF37),
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFD4AF37)
                        .withOpacity(0.5),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 9),

            // SERVICES GRID

            Row(
              children: const [

                Expanded(
                  child: ServiceItem(
                    icon: Icons.code,
                    title: 'JAVA DEVELOPMENT',
                  ),
                ),

                SizedBox(width: 8),

                Expanded(
                  child: ServiceItem(
                    icon: Icons.web,
                    title: 'WEB DEVELOPMENT',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 7),

            Row(
              children: const [

                Expanded(
                  child: ServiceItem(
                    icon: Icons.design_services,
                    title: 'UI / UX DESIGN',
                  ),
                ),

                SizedBox(width: 8),

                Expanded(
                  child: ServiceItem(
                    icon: Icons.devices,
                    title: 'RESPONSIVE DESIGN',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 13),

            // =========================================
            // TECHNOLOGIES
            // =========================================

            Row(
              children: [

                const Text(
                  'TECHNOLOGIES',
                  style: TextStyle(
                    color: Color(0xFFD4AF37),
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFD4AF37)
                        .withOpacity(0.5),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),

            const Text(
              'Java  •  HTML  •  CSS  •  JavaScript  •  '
              'Figma  •  Canva',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 7.5,
                letterSpacing: 0.3,
              ),
            ),

            const Spacer(),

            // =========================================
            // CONTACT
            // =========================================

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

              children: [

                const ContactItem(
                  icon: Icons.email_outlined,
                  text: 'hannaloren.obra@lorma.edu',
                ),

                const ContactItem(
                  icon: Icons.location_on_outlined,
                  text: 'Philippines',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// ============================================================
// MINI SKILL
// ============================================================

class MiniSkill extends StatelessWidget {

  final String text;

  const MiniSkill({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 4,
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

        border: Border.all(
          color: const Color(0xFFD4AF37)
              .withOpacity(0.6),
        ),
      ),

      child: Text(
        text,

        style: const TextStyle(
          color: Colors.white70,
          fontSize: 6.5,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}


// ============================================================
// SERVICE ITEM
// ============================================================

class ServiceItem extends StatelessWidget {

  final IconData icon;
  final String title;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 7,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFF151515),

        borderRadius: BorderRadius.circular(7),

        border: Border.all(
          color: Colors.white12,
        ),
      ),

      child: Row(
        children: [

          Icon(
            icon,
            color: const Color(0xFFD4AF37),
            size: 14,
          ),

          const SizedBox(width: 7),

          Expanded(
            child: Text(
              title,

              style: const TextStyle(
                color: Colors.white70,
                fontSize: 6.5,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// ============================================================
// CONTACT ITEM
// ============================================================

class ContactItem extends StatelessWidget {

  final IconData icon;
  final String text;

  const ContactItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [

        Icon(
          icon,
          color: const Color(0xFFD4AF37),
          size: 12,
        ),

        const SizedBox(width: 5),

        Text(
          text,

          style: const TextStyle(
            color: Colors.white54,
            fontSize: 6.5,
          ),
        ),
      ],
    );
  }
}