import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';
import '../widgets/actions_button.dart';
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
                    height: 0.8.sh,
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
                  SizedBox(height: 40.h),
                  const HeaderTitle(),
                  const Spacer(),
                  buildOptionsSection(),
                  SizedBox(height: 12.h),
                  const CustomNavBar(),
                  SizedBox(height: 2.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOptionsSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          const ProfileQuestion(),
          const QuestionOptions(),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Pick your option.\nSee who has a similar mind.',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white70,
                    height: 1.3,
                  ),
                ),
              ),
              ActionButton(
                icon: Icons.mic,
                borderColor: AppColors.purple,
                backgroundColor: Colors.black,
                iconColor: AppColors.purple,
                onTap: () {},
              ),
              SizedBox(width: 12.w),
              ActionButton(
                icon: Icons.arrow_forward,
                borderColor: AppColors.purple,
                iconColor: Colors.black,
                backgroundColor: AppColors.purple,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
