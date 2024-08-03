import 'package:flutter/material.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_colors.dart';

class JokeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const JokeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        AppAssets.logo,
        height: 62,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Handicrafted by',
                    style: TextStyle(color: AppColors.grey),
                  ),
                  Text('Jim HLS'),
                ],
              ),
              SizedBox(width: 8),
              CircleAvatar(
                minRadius: 22,
                backgroundImage: AssetImage(AppAssets.flower),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
