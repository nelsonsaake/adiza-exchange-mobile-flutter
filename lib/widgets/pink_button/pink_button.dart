import 'package:adiza_exchange/extensions/button_style.dart';
import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/widgets/sm_circular_progress_indicator/sm_circular_progress_indicator.dart';
import 'package:flutter/material.dart';

class PinkButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isBusy;

  const PinkButton(
    this.label, {
    Key? key,
    this.onTap,
    this.isBusy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TextButton(
        style: const ButtonStyle().color(AppColors.pink),
        onPressed: isBusy ? null : onTap,
        child: (isBusy)
            ? const SMCircularProgressIndicator()
            : Text(label).white(),
      ),
    );
  }
}
