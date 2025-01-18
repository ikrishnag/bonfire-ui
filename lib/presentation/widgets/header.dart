import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stroll Bonfire',
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.headingPurple,
                shadows: [
                  Shadow(
                    color: Colors.black26,
                    offset: Offset(0, 0),
                    blurRadius: 40,
                  ),
                  Shadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Color.fromARGB(255, 217, 215, 252),
              shadows: [
                Shadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
                Shadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  blurRadius: 20,
                ),
              ],
              size: 34,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  
                  Text(
                    String.fromCharCode(Icons.access_time.codePoint),
                    style: TextStyle(
                      fontSize: 14, 
                      fontFamily: Icons.access_time.fontFamily,
                      package: Icons.access_time.fontPackage,
                      color: Colors.transparent, 
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.5), 
                          offset: Offset(0, 2), 
                          blurRadius: 4, 
                        ),
                      ],
                    ),
                  ),
                  
                  const Icon(Icons.access_time, size: 14, color: Colors.white),
                ],
              ),

              const SizedBox(width: 4),
              const Text(
                '22h 00m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      offset: Offset(0, 1),
                      blurRadius: 1,
                    ),
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 1),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              
              Stack(
                alignment: Alignment.center,
                children: [
                  
                  Text(
                    String.fromCharCode(Icons.person_outline.codePoint),
                    style: TextStyle(
                      fontSize: 16, 
                      fontFamily: Icons.person_outline.fontFamily,
                      package: Icons.person_outline.fontPackage,
                      color: Colors.transparent, 
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.5), 
                          offset: Offset(0, 2), 
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  
                  const Icon(Icons.person_outline,
                      size: 16, color: Colors.white),
                ],
              ),

              const SizedBox(width: 4),
              const Text(
                '103',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      offset: Offset(0, 1),
                      blurRadius: 1,
                    ),
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 1),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
