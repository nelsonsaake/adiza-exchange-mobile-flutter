import 'package:adiza_exchange/extensions/text.dart';
import 'package:flutter/material.dart';

class H2 extends Text {
   H2(String text, {Key? key})
      : super(
          key: key,
          text,
          style: const Text("").size(15).dark().style,
        );
}
