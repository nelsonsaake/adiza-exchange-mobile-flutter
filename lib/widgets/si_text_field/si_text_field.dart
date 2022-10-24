import 'package:adiza_exchange/extensions/widget_list.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/widgets/h2/h2.dart';
import 'package:flutter/material.dart';

class SITextField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool obscureText;
  final TextAlign textAlign;

  const SITextField(
      this.label, {
        Key? key,
        this.placeholder,
        this.obscureText = false,
        this.textAlign = TextAlign.end,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        H2(label),
        Expanded(
          child: TextFormField(
            obscureText: obscureText,
            textAlign: textAlign,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: placeholder,
              hintStyle: const TextStyle(color: AppColors.placeholderTextColor),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ].spacing(16),
    );
  }
}
