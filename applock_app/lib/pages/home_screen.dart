import 'package:applock_app/pages/intro_screen.dart';
import 'package:applock_app/pages/locked_apps_screen.dart';
import 'package:applock_app/widgets/features_container_long.dart';
import 'package:applock_app/widgets/stack_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 89, 53, 207),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => IntroScreen(),
              ),
            );
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 54),
              Text(
                "Hello",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "Protect your privacy",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 215, 211, 211),
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LockedAppsScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 89, 74, 207),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Applock",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              "Nice to meet you",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 215, 211, 211),
                              ),
                            ),
                            const SizedBox(height: 18),
                            Stack(
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Row(
                                  children: [
                                    StackIcons(
                                      imagePath: "lib/images/whatsapp.png",
                                    ),
                                    StackIcons(
                                      imagePath: "lib/images/instagram.png",
                                    ),
                                    StackIcons(
                                      imagePath: "lib/images/facebook.png",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 113, 101, 207),
                        ),
                        child: Center(
                          child: Image.asset(
                            "lib/images/lock.png",
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "More Features",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.start,
                children: [
                  FeatureContainer(
                    label: 'Password Type',
                    height: 140,
                    width: screenWidth * 0.4,
                    imagePath: "lib/images/privacy.png",
                  ),
                  FeatureContainer(
                    label: 'Fake Icon',
                    height: 100,
                    width: screenWidth * 0.4,
                    imagePath: "lib/images/calendar.png",
                  ),
                  FeatureContainer(
                    label: 'Fake Icon',
                    height: 100,
                    width: screenWidth * 0.4,
                    imagePath: "lib/images/calendar.png",
                  ),
                  Transform.translate(
                    offset: const Offset(0, -38),
                    child: FeatureContainer(
                      label: 'Intruder Selfie',
                      height: 140,
                      width: screenWidth * 0.4,
                      imagePath: "lib/images/user.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
