
import 'package:flutter/material.dart';
import 'package:hepa/utils/constans.dart';
import 'package:hepa/utils/methods.dart';

class HepaMenuItem extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback? onTap;

  const HepaMenuItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: blueColor.withAlpha(25),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              height: 50,
              color: Colors.red,
            ),
            verticalSpace(10),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
