import 'package:adiza_exchange/res/app_colors.dart';
import 'package:flutter/material.dart';

extension TextExt on Text {
  Text copyWith({TextStyle? style, TextAlign? align, bool? softWrap}) {
    return Text(
      data ?? "",
      style: style ?? this.style,
      textAlign: align ?? textAlign,
      softWrap: softWrap,
    );
  }

  TextStyle get style {
    return this.style ?? const TextStyle();
  }

  Text bold() {
    return copyWith(
      style: style.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text size(double? s) {
    return copyWith(
      style: style.copyWith(fontSize: s),
    );
  }

  Text color(c) {
    Color? cc = style.color;

    if (c is Color || c is Color?) {
      cc = c;
    } else if (c is int) {
      cc = Color(c);
    }

    return copyWith(
      style: style.copyWith(color: cc),
    );
  }

  Text white() {
    return color(Colors.white);
  }

  Text pink() {
    return color(AppColors.pink);
  }

  Text black() {
    return color(Colors.black);
  }

  Text dark() {
    return color(AppColors.textColor);
  }

  Text darker() {
    return color(AppColors.dark);
  }

  Text light() {
    return color(AppColors.textColorLight);
  }

  Text weight(fw) {
    var _fw = FontWeight.normal;

    if (fw is FontWeight) {
      _fw = fw;
    } else if (fw is int) {
      switch (fw) {
        case 100:
          _fw = FontWeight.w100;
          break;
        case 200:
          _fw = FontWeight.w200;
          break;
        case 300:
          _fw = FontWeight.w300;
          break;
        case 400:
          _fw = FontWeight.w400;
          break;
        case 500:
          _fw = FontWeight.w500;
          break;
        case 600:
          _fw = FontWeight.w600;
          break;
        case 700:
          _fw = FontWeight.w700;
          break;
        case 800:
          _fw = FontWeight.w800;
          break;
        case 900:
          _fw = FontWeight.w900;
          break;
      }
    }

    return copyWith(
      style: style.copyWith(fontWeight: _fw),
    );
  }

  Text ellipsis() {
    return copyWith(
      style: style.copyWith(overflow: TextOverflow.ellipsis),
    );
  }

  Text wrap() {
    return copyWith(
      softWrap: true,
    );
  }

  Text align(TextAlign align) {
    return copyWith(
      align: align,
    );
  }

  Text center() {
    return copyWith(
      align: TextAlign.center,
    );
  }

  Text left() {
    return copyWith(
      align: TextAlign.left,
    );
  }

  Text right() {
    return copyWith(
      align: TextAlign.right,
    );
  }

  Text h(double lh) {
    return copyWith(
      style: style.copyWith(height: lh),
    );
  }

  Text italic() {
    return copyWith(
      style: style.copyWith(fontStyle: FontStyle.italic),
    );
  }

  Text rem(double fontSize) {
    double? fs = style.fontSize;

    if (fs != null) {
      fs *= fontSize;
      return size(fs);
    }

    return this;
  }

  Text underline() {
    return copyWith(
      style: style.copyWith(decoration: TextDecoration.underline),
    );
  }
}
