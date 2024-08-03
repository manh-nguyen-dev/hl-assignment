import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 42, bottom: 12,),
      color: AppColors.green,
      child: const Column(
        children: [
          Text(
            'A joke a day keeps the doctor away',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 24),
          Text(
            'If you joke wrong way, your teeth have to pay. (Seriour)',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
