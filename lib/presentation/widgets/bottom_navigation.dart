import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_fe_task/constants/colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 15, 17, 21),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _NavBarIcon(
            svgAsset: 'assets/icons/card.svg',
            onTap: () {},
          ),
          _NavBarIcon(
            svgAsset: 'assets/icons/bonfire.svg',
            hasNotification: true,
            onTap: () {},
          ),
          _NavBarIcon(
            svgAsset: 'assets/icons/message.svg',
            badge: '10',
            onTap: () {},
          ),
          _NavBarIcon(
            svgAsset: 'assets/icons/user.svg',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final String svgAsset;
  final String? badge;
  final bool hasNotification;
  final VoidCallback onTap;

  const _NavBarIcon({
    required this.svgAsset,
    required this.onTap,
    this.badge,
    this.hasNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 46.w,
        height: 46.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // SVG Icon
            SvgPicture.asset(
              svgAsset,
            ),
            if (hasNotification)
              Positioned(
                top: 10.h,
                right: -1.w,
                child: Container(
                  width: 18.w,
                  height: 16.h,
                  decoration: BoxDecoration(
                    color: AppColors.badgePurple,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color.fromARGB(255, 15, 17, 21),
                      width: 2.w,
                    ),
                  ),
                ),
              ),
            if (badge != null)
              Positioned(
                top: 10.h,
                right: 2.w,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.badgePurple,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color.fromARGB(255, 15, 17, 21),
                      width: 2.w,
                    ),
                  ),
                  child: Text(
                    badge!,
                    style: TextStyle(
                      fontSize: 7.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
