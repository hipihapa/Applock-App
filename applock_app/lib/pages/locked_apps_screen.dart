import 'package:applock_app/pages/home_screen.dart';
import 'package:applock_app/widgets/apps_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LockedAppsScreen extends StatelessWidget {
  const LockedAppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 20.0),
              child: Text(
                "Applock",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 23, 15, 84),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.only(
                          right: 10.0), // Space between buttons
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 24, 33, 105),
                      ),
                      child: Center(
                        child: Text(
                          "Unlocked",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Locked",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 24, 33, 105),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Recommended Apps",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 24, 33, 105),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            LockedAppsCard(
              label: 'Whatsapp',
              subLabel: 'Protected',
              imagePath: 'lib/images/whatsapp.png',
            ),
            SizedBox(
              height: 22,
            ),
            LockedAppsCard(
              label: 'Photos',
              subLabel: 'Protected',
              imagePath: 'lib/images/photo.png',
            ),
            SizedBox(
              height: 22,
            ),
            LockedAppsCard(
              label: 'Facebook',
              subLabel: 'Protected',
              imagePath: 'lib/images/facebook.png',
            ),
            SizedBox(
              height: 22,
            ),
            LockedAppsCard(
              label: 'Instagram',
              subLabel: 'Protected',
              imagePath: 'lib/images/instagram.png',
            ),
            SizedBox(
              height: 22,
            ),
            LockedAppsCard(
              label: 'Telegram',
              subLabel: 'Protected',
              imagePath: 'lib/images/telegram.png',
            ),
          ],
        ),
      ),
    );
  }
}
