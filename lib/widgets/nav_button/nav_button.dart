import 'package:adiza_exchange/widgets/ul/ul.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const NavButton(
    this.label, {
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Ul(label),
    );
  }
}
