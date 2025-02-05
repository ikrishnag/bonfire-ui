import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_fe_task/constants/colors.dart';

class QuestionOptions extends StatelessWidget {
  const QuestionOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: OptionButton(
                label: 'The peace in the early mornings',
                index: 'A',
                onTap: () {},
              ),
            ),
            SizedBox(width: 11.w),
            Expanded(
              child: OptionButton(
                label: 'The magical golden hours',
                index: 'B',
                onTap: () {},
              ),
            ),
          ],
        ),
        SizedBox(height: 11.h),
        Row(
          children: [
            Expanded(
              child: OptionButton(
                label: 'Wind-down time after dinners',
                index: 'C',
                onTap: () {},
              ),
            ),
            SizedBox(width: 11.w),
            Expanded(
              child: OptionButton(
                label: 'The serenity past midnight',
                index: 'D',
                isSelected: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  final String label;
  final String index;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionButton({
    super.key,
    required this.label,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(14.w),
        constraints: BoxConstraints(
          minWidth: 160.w,
          minHeight: 80.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isSelected ? AppColors.purple : Colors.transparent,
            width: 2.w,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 32.w,
              height: 42.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.purple : Colors.white,
                  width: 1.5.w,
                ),
                color: isSelected ? AppColors.purple : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  index,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
