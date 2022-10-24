import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';

class GrayBar extends StatelessWidget {
  final double height;
  final double width;

  const GrayBar.sm({Key? key})
      : height = 7,
        width = 130,
        super(key: key);

  const GrayBar.lg({Key? key})
      : height = 11,
        width = 250,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.loadingFieldsPlaceholderColor,
      height: height,
      width: width,
    );
  }
}
