import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';

class Cerr extends Text {
  Cerr(String? text, {Key? key})
      : super(
          key: key,
          text ?? "",
          style: const Text("").size(13).color(AppColors.brown).style,
        );
}
