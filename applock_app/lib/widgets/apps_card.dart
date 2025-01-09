import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LockedAppsCard extends StatelessWidget {
  final String label;
  final String subLabel;
  final String imagePath;
  const LockedAppsCard({
    super.key,
    required this.label,
    required this.subLabel,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0),
      child: Container(
        height: 66,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            // Icon Container
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[50],
                ),
                child: Center(
                  child: Image.asset(
                    imagePath,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),

            // Text Column
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 24, 33, 105),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subLabel,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),

            // Spacer to fix lock icon position
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset(
                "lib/images/lock.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
