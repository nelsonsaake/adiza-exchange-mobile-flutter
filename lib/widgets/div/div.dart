import 'package:adiza_exchange/extensions/text.dart';
import 'package:flutter/material.dart';

class Div extends Text {
  Div(String? text, {Key? key})
      : super(
          key: key,
          text ?? "",
          style: const Text("").size(13).light().style,
        );
}
