import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class VoteButton extends StatelessWidget {
  const VoteButton({
    super.key,
    required this.name,
    required this.bgColor,
    this.textColor,
    this.onTap,
  });

  final String name;
  final Color bgColor;
  final Color? textColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      child: InkWell(
        focusColor: bgColor.withOpacity(0.0),
        hoverColor: bgColor.withOpacity(0.8),
        onTap: onTap,
        child: SizedBox(
          width: 150,
          height: 38,
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: textColor ?? AppColors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
