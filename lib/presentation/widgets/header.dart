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
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.headingPurple, 
                shadows: _defaultShadows,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: const Color.fromARGB(255, 217, 215, 252),
              size: 34.sp,
              shadows: [
                Shadow(
                  color: const Color.fromRGBO(52, 35, 47, 0.5),
                  offset: Offset(0, 1.h),
                  blurRadius: 4.r,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildClockWithShadow(),
              SizedBox(width: 6.w),
              buildTextWithShadow('22h 00m'),
              SizedBox(width: 8.w),
              buildIconWithShadow(Icons.person_outline),
              SizedBox(width: 3.w),
              buildTextWithShadow('103'),
            ],
          ),
        ),
      ],
    );
  }

  List<Shadow> get _defaultShadows => [
        Shadow(
          color: const Color(0x33000000),
          offset: Offset(0, 0),
          blurRadius: 7.9.r,
        ),
        Shadow(
          color: const Color(0xFFBEBEBE),
          offset: Offset(0, 0),
          blurRadius: 2.r,
        ),
        Shadow(
          color: const Color.fromRGBO(52, 35, 47, 0.5),
          offset: Offset(0, 1.h),
          blurRadius: 2.r,
        ),
      ];

  Widget buildClockWithShadow() {
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(0, 1.h),
          child: Image.asset(
            'assets/icons/clock.png',
            height: 14.sp,
            color: const Color.fromRGBO(0, 0, 0, 0.65),
            colorBlendMode: BlendMode.srcATop,
          ),
        ),
        Image.asset(
          'assets/icons/clock.png',
          height: 14.sp,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget buildTextWithShadow(String text) {
    return Text(
      text,
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
    );
  }

  Widget buildIconWithShadow(IconData icon) {
    return Icon(
      icon,
      size: 16.sp,
      color: Colors.white,
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
    );
  }
}
