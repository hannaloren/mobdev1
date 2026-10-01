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
      title: 'Digital Business Card',
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
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen>
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
      backgroundColor: const Color.fromARGB(255, 59, 47, 47),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: flipCard,
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  final angle = _animation.value * math.pi;

                  final showFront = angle < math.pi / 2;

                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(angle),
                    child: showFront
                        ? const FrontCard()
                        : Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: const BackCard(),
                          ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Text(
                isFront ? 'Tap the card to view the back' : 'Tap to return',
                key: ValueKey(isFront),
                style: const TextStyle(
                  color: Color(0xFFD4AF37),
                  fontSize: 13,
                  letterSpacing: 1,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Icon(
              Icons.touch_app_outlined,
              color: Color(0xFFD4AF37),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}


// ============================================================
// FRONT SIDE
// ============================================================

class FrontCard extends StatelessWidget {
  const FrontCard({super.key});

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
            color: Colors.black.withOpacity(0.5),
            blurRadius: 25,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Stack(
        children: [

          // Decorative circle
          Positioned(
            top: -55,
            right: -45,
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFD4AF37).withOpacity(0.25),
                  width: 1,
                ),
              ),
            ),
          ),

          // Gold corner decoration
          Positioned(
            bottom: -45,
            right: -25,
            child: Transform.rotate(
              angle: -0.3,
              child: Container(
                width: 150,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color(0xFFD4AF37),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // =========================
                // PROFILE PICTURE
                // =========================

                Container(
                  width: 82,
                  height: 82,
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
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          size: 45,
                          color: Color(0xFFD4AF37),
                        );
                      },
                    ),
                  ),
                ),

                // SPACE BETWEEN PHOTO AND TEXT
                const SizedBox(width: 20),

                // =========================
                // INFORMATION
                // =========================

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // NAME
                        const Text(
                          'HANNA LOREN OBRA',
                          style: TextStyle(
                            color: Color(0xFFE6C65C),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.8,
                          ),
                        ),

                        // SPACE
                        const SizedBox(height: 6),

                        // SCHOOL
                        const Text(
                          'BSCS-II • LORMA COLLEGES',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 7.5,
                            letterSpacing: 1,
                          ),
                        ),

                        // SPACE
                        const SizedBox(height: 10),

                        // GOLD LINE
                        Container(
                          width: 45,
                          height: 1,
                          color: const Color(0xFFD4AF37),
                        ),

                        // SPACE
                        const SizedBox(height: 9),

                        // ABOUT ME
                        const Text(
                          'ABOUT ME',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),

                        // SPACE
                        const SizedBox(height: 6),

                        const Text(
                          'A Computer Science student passionate '
                          'about technology, creativity, and '
                          'meaningful design.',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 8,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // =========================
          // LOGO
          // =========================

          const Positioned(
            top: 14,
            left: 22,
            child: Text(
              'H.',
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// BACK SIDE
class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFD4AF37),
          size: 12,
        ),

        const SizedBox(width: 7),

        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 8,
            ),
          ),
        ),
      ],
    );
  }
}

class BackCard extends StatelessWidget {
  const BackCard({super.key});

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
            color: Colors.black.withOpacity(0.5),
            blurRadius: 25,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // =========================
            // SKILLS
            // =========================

            Row(
              children: [
                const Text(
                  'SKILLS',
                  style: TextStyle(
                    color: Color(0xFFD4AF37),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFD4AF37),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 7),

            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: const [
                SkillTag(
                  icon: Icons.code,
                  text: 'HTML & CSS',
                ),
                SkillTag(
                  icon: Icons.javascript,
                  text: 'JavaScript',
                ),
                SkillTag(
                  icon: Icons.coffee,
                  text: 'Java',
                ),
                SkillTag(
                  icon: Icons.palette_outlined,
                  text: 'UI/UX',
                ),
                SkillTag(
                  icon: Icons.phone_android,
                  text: 'Mobile & Web',
                ),
                SkillTag(
                  icon: Icons.design_services,
                  text: 'Figma',
                ),
              ],
            ),

            const SizedBox(height: 8),

            // =========================
            // CONTACT
            // =========================
            

            Row(
              children: [
                const Text(
                  'CONTACT ME',
                  style: TextStyle(
                    color: Color(0xFFD4AF37),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFD4AF37),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            const ContactRow(
              icon: Icons.email_outlined,
              text: 'hannaloren.obra@lorma.edu',
            ),

            const SizedBox(height: 3),

            const ContactRow(
              icon: Icons.phone_outlined,
              text: '+63 900 000 0000',
            ),

            const SizedBox(height: 3),

            const ContactRow(
              icon: Icons.location_on_outlined,
              text: 'Philippines',
            ),

            const Spacer(),

            // =========================
            // SOCIAL ICONS
            // =========================

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialIcon(icon: Icons.link),
                SizedBox(width: 8),
                SocialIcon(icon: Icons.camera_alt_outlined),
                SizedBox(width: 8),
                SocialIcon(icon: Icons.mail_outline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// SKILL TAG
// ============================================================

class SkillTag extends StatelessWidget {
  final IconData icon;
  final String text;

  const SkillTag({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFD4AF37).withOpacity(0.7),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: const Color(0xFFD4AF37),
            size: 10,
          ),

          const SizedBox(width: 4),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 7,
            ),
          ),
        ],
      ),
    );
  }
}


// ============================================================
// SOCIAL ICON
// ============================================================

class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23,
      height: 23,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFD4AF37),
      ),
      child: Icon(
        icon,
        color: Colors.black,
        size: 12,
      ),
    );
  }
}