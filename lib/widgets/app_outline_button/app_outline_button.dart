import 'package:adiza_exchange/extensions/button_style.dart';
import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  final Color color;
  final String label;
  final VoidCallback? onTap;

  const AppOutlineButton(
    this.label, {
    Key? key,
    this.color = AppColors.textColor,
        this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: const ButtonStyle().border(
        color: color,
        size: 1,
      ),
      child: Text(label).color(color),
    );
  }
}
