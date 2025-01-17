import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _NavBarIcon(
            icon: Icons.style_outlined,
            onTap: () {},
          ),
          _NavBarIcon(
            icon: Icons.local_fire_department_outlined,
            hasNotification: true,
            onTap: () {},
          ),
          _NavBarIcon(
            icon: Icons.chat_bubble_outline,
            badge: '10',
            onTap: () {},
          ),
          _NavBarIcon(
            icon: Icons.person_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final IconData icon;
  final String? badge;
  final bool hasNotification;
  final VoidCallback onTap;

  const _NavBarIcon({
    required this.icon,
    required this.onTap,
    this.badge,
    this.hasNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 48,
        height: 48,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),
            if (hasNotification)
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade300,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            if (badge != null)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    badge!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
