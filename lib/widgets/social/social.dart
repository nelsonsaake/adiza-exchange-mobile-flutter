import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Social extends StatelessWidget {
  final IconData icon;

  const Social.twitter({Key? key})
      : icon = PhosphorIcons.twitterLogoFill,
        super(key: key);

  const Social.linkedIn({Key? key})
      : icon = PhosphorIcons.linkedinLogoFill,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: AppColors.textColor,
        shape: BoxShape.circle,
      ),
      child: SizedBox.square(
        dimension: 30,
        child: Center(
          child: Icon(
            icon,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
