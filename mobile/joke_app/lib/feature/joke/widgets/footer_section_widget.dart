import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 64),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: AppColors.grey),
        ),
      ),
      child: const Column(
        children: [
          Text(
            'This appis created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Copyright 2021 HLS',
            style: TextStyle(fontSize: 14, color: AppColors.charcoal),
          ),
        ],
      ),
    );
  }
}
