import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/widgets/h2/h2.dart';
import 'package:flutter/material.dart';

class Ul extends StatelessWidget {
  final String text;
  final double lineWidth;

  const Ul(this.text, {Key? key, this.lineWidth = 50.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        H2(text).weight(400),
        SizedBox(
          width: lineWidth,
          child: const Divider(
            color: AppColors.brown,
            height: 1,
          ),
        ),
      ],
    );
  }
}
