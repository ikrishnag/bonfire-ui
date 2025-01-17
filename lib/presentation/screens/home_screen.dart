import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/actions_bottom.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/header.dart';
import '../widgets/profile_section.dart';
import '../widgets/question_options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sunset-final.png'),
            // fit: BoxFit.cover,
            fit: BoxFit.fitWidth,
            alignment: Alignment.topRight,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 50),
                  const HeaderTitle(),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const ProfileQuestion(),
                        const SizedBox(height: 24),
                        const QuestionOptions(),
                        const SizedBox(height: 25),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            children: [
                              const Text(
                                'Pick your option.\nSee who has a similar mind.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white70,
                                  height: 1.3,
                                ),
                              ),
                              const Spacer(),
                              ActionButton(
                                icon: Icons.mic,
                                color: AppColors.purple,
                                bgColor: Colors.black,
                                iconColor: AppColors.purple,
                                onTap: () {},
                              ),
                              const SizedBox(width: 12),
                              ActionButton(
                                icon: Icons.arrow_forward,
                                color: Colors.black,
                                iconColor: Colors.black,
                                bgColor: AppColors.purple,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomNavBar(),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
