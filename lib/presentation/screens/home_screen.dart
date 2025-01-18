import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    height: 0.7.sh,
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
              // Positioned.fill(
              //   child: Align(
              //     alignment: Alignment.topCenter,
              //     child: Container(
              //       height: 1.1.sh,
              //       decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //           begin: Alignment.topCenter,
              //           end: Alignment.center,
              //           colors: [
              //             Colors.transparent,
              //             Colors.black45,
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Column(
                children: [
                  SizedBox(height: 50.h),
                  const HeaderTitle(),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        const ProfileQuestion(),
                        const QuestionOptions(),
                        SizedBox(height: 12.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Row(
                            children: [
                              Text(
                                'Pick your option.\nSee who has a similar mind.',
                                style: TextStyle(
                                  fontSize: 15.sp,
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
                              SizedBox(width: 12.w),
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
}
