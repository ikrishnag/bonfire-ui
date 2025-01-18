import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final Color borderColor;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.backgroundColor = Colors.black,
    this.iconColor = Colors.white,
    this.borderColor = AppColors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 46.w,
        height: 46.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 2.w,
          ),
          shape: BoxShape.circle,
          color: backgroundColor,
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
