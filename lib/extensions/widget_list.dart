import 'package:flutter/material.dart';

extension AddSpacing on List<Widget> {

  List<Widget> spacing(double spacing) {
    List<Widget> cs = [];

    if(isEmpty) return cs;

    for (var child in this) {
      cs.add(child);
      cs.add(SizedBox.square(dimension: spacing));
    }
    cs.removeLast();

    return cs;
  }

}
