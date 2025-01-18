import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.headingPurple,
                shadows: [
                  Shadow(
                    color: Colors.black26,
                    offset: Offset(0, 0),
                    blurRadius: 40.r,
                  ),
                  Shadow(
                    color: Colors.black45,
                    offset: Offset(0, 3.h),
                    blurRadius: 15.r,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: const Color.fromARGB(255, 217, 215, 252),
              shadows: [
                Shadow(
                  color: Colors.black12,
                  offset: Offset(0, 2.h),
                  blurRadius: 4.r,
                ),
                Shadow(
                  color: Colors.black12,
                  offset: Offset(0, 2.h),
                  blurRadius: 20.r,
                ),
              ],
              size: 34.sp,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    String.fromCharCode(Icons.access_time.codePoint),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: Icons.access_time.fontFamily,
                      package: Icons.access_time.fontPackage,
                      color: Colors.transparent,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 2.h),
                          blurRadius: 4.r,
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.access_time, size: 14.sp, color: Colors.white),
                ],
              ),
              SizedBox(width: 4.w),
              Text(
                '22h 00m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      offset: Offset(0, 1.h),
                      blurRadius: 1.r,
                    ),
                    Shadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 1.h),
                      blurRadius: 4.r,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    String.fromCharCode(Icons.person_outline.codePoint),
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: Icons.person_outline.fontFamily,
                      package: Icons.person_outline.fontPackage,
                      color: Colors.transparent,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 2.h),
                          blurRadius: 4.r,
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.person_outline, size: 16.sp, color: Colors.white),
                ],
              ),
              SizedBox(width: 4.w),
              Text(
                '103',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                      offset: Offset(0, 1.h),
                      blurRadius: 1.r,
                    ),
                    Shadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 1.h),
                      blurRadius: 4.r,
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
