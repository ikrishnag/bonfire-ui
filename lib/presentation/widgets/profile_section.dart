import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class ProfileQuestion extends StatelessWidget {
  const ProfileQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 40.w,
            top: 40.h,
            child: Container(
              padding: EdgeInsets.only(left: 30.w, right: 10.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 21, 24, 0.9),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child:  Text(
                'Angelina, 28',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: SizedBox(
                          width: 70.w,
                          child: Container(
                            width: 80.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromRGBO(18, 21, 24, 1),
                                width: 5.w,
                              ),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/joey.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 50.h, left: 6.w),
                          child: Text(
                            'What is your favorite time\nof the day?',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              height: 1.2,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Center(
                    child: Text(
                      '"Mine is definitely the peace in the morning."',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.lightPurple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
