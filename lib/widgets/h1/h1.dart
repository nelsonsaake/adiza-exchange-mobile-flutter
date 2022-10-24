import 'package:adiza_exchange/extensions/text.dart';
import 'package:flutter/material.dart';

class H1 extends Text {
  H1(String text, {Key? key})
      : super(
          key: key,
          text,
          textAlign: TextAlign.center,
          style: const Text("").size(18).style,
        );
}
