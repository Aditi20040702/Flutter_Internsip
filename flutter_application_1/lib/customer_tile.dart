import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerTile extends StatelessWidget {
  final String imagePath;
  final String name;
  final String breed1;
  final String breed2;
  final String gender;
  final String tag;

  final Color tagColor;
  final Color tagBorderColor;
  final Color tagTextColor;

  const CustomerTile({
    super.key,
    required this.imagePath,
    required this.name,
    required this.breed1,
    required this.breed2,
    required this.gender,
    required this.tag,
    required this.tagColor,
    required this.tagBorderColor,
    required this.tagTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          // Profile Image
          Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 12),

          //Text Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),

                Row(
                  children: [
                    Text(
                      breed1,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      breed2,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 2),

                Text(
                  gender,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),

          // Right Tag
          Container(
            width: 100,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: tagColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: tagBorderColor, width: 1),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                tag,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: tagTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}