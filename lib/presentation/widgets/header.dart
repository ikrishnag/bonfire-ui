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
                  const Shadow(
                    color: Colors.black45,
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                  Shadow(
                    color: Colors.black26,
                    offset: const Offset(0, 2),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 36,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.access_time, size: 14, color: Colors.white),
              const SizedBox(width: 4),
              const Text(
                '22h 00m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
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
              const Icon(Icons.person_outline, size: 16, color: Colors.white),
              const SizedBox(width: 4),
              const Text(
                '103',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
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
