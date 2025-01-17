import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ProfileQuestion extends StatelessWidget {
  const ProfileQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color.fromARGB(255, 50, 50, 50), width: 3),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/joey.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'Angelina, 28',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'What is your favorite time\nof the day?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Mine is definitely the peace in the morning.',
          style: TextStyle(
            fontSize: 15,
            color: AppColors.lightPurple,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
