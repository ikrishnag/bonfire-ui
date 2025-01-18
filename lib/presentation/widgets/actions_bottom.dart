import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color bgColor;
  final Color iconColor;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48.w,
        height: 48.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.purple,
            width: 2.w,
          ),
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 24.sp,
        ),
      ),
    );
  }
}
