import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_fe_task/constants/colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
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
        width: 48,
        height: 48,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // SVG Icon
            SvgPicture.asset(
              svgAsset,
              width: 28,
              height: 30,
            ),
            if (hasNotification)
              Positioned(
                top: 10,
                right: -1,
                child: Container(
                  width: 18,
                  height: 16,
                  decoration: BoxDecoration(
                    color: AppColors.badgePurple,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color.fromARGB(255, 15, 17, 21),
                        width: 2),
                  ),
                ),
              ),
            if (badge != null)
              Positioned(
                top: 10,
                right: 2,
                child: Container(
            
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.badgePurple,
                    borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                        color: Color.fromARGB(255, 15, 17, 21),
                        width: 2),
                  
                  ),
                  child: Text(
                    badge!,
                    style: const TextStyle(
                      fontSize: 8,
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
