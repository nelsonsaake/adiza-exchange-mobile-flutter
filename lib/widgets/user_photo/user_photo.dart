import 'dart:io';

import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/widgets/div/div.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserPhoto extends StatelessWidget {
  final XFile? image;

  const UserPhoto({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // 024 460 6492 - Auntie Akesi - PMMC
        (image?.path == null)
            ? Container(
                color: AppColors.qrPlaceholderColor,
                child: const Center(),
              )
            : Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    colorFilter: const ColorFilter.linearToSrgbGamma(),
                    image: FileImage(
                      File(image!.path),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Image.file(
                          File(image!.path),
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.backgroundColor,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Div("TAP TO CHANGE PHOTO").dark(),
                      ),
                    ),
                  ],
                ),
              );
  }
}
