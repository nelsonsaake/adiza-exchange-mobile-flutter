import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class GrayAvatar extends StatelessWidget {
  const GrayAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.loadingFieldsPlaceholderColor,
        shape: BoxShape.circle,
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          PhosphorIcons.user,
          color: AppColors.textColorLight,
          size: 40,
        ),
      ),
    );  }
}
