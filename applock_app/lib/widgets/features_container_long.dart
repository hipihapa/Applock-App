// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureContainer extends StatelessWidget {
  final String label;
  // ignore: non_constant_identifier_names
  final String imagePath;
  final double width;
  final double height;
  const FeatureContainer({
    super.key,
    required this.label,
    required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 89, 74, 207),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            offset: Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 113, 101, 207),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: const Color.fromARGB(255, 215, 211, 211),
            ),
          ),
        ],
      ),
    );
  }
}
