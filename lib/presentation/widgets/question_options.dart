import 'package:flutter/material.dart';
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
                label: 'The peace in the\nearly mornings',
                index: 'A',
                onTap: () {},
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OptionButton(
                label: 'The magical\ngolden hours',
                index: 'B',
                onTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: OptionButton(
                label: 'Wind-down time\nafter dinners',
                index: 'C',
                onTap: () {},
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OptionButton(
                label: 'The serenity past\nmidnight',
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
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.purple : Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 42,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? AppColors.purple : Colors.white,
                    width: 1.5,
                  ),
                  color: isSelected ? AppColors.purple : Colors.transparent),
              child: Center(
                child: Text(
                  index,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withValues(alpha: 0.9),
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
