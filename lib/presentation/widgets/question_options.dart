


import 'package:flutter/material.dart';



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
          color: isSelected
              ? Colors.blue.shade400.withOpacity(0.2)
              : Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? Colors.blue.shade400 : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.15),
              ),
              child: Center(
                child: Text(
                  index,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.blue.shade400 : Colors.white,
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
                  color: Colors.white.withOpacity(0.9),
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
