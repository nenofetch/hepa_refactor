import 'package:hepa/presentation/misc/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String title;
  final IconData icon;
  final IconData selectedIcon;

  const BottomNavBarItem({
    super.key,
    required this.index,
    required this.isSelected,
    required this.title,
    required this.icon,
    required this.selectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 25,
          height: 25,
          child: Icon(
            isSelected ? selectedIcon : icon,
            color: isSelected ? saffron : Colors.white,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 9, fontWeight: FontWeight.bold, color: ghostWhite),
        )
      ],
    );
  }
}
