import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';

class GraySocial extends StatelessWidget {
  const GraySocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.loadingFieldsPlaceholderColor,
        shape: BoxShape.circle,
      ),
      child: const SizedBox.square(
        dimension: 30,
      ),
    );
  }
}
