import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/extensions/widget_list_separator.dart';
import 'package:adiza_exchange/widgets/avatar/avatar.dart';
import 'package:adiza_exchange/widgets/pink_button/pink_button.dart';
import 'package:adiza_exchange/widgets/si_text_field/si_text_field.dart';
import 'package:adiza_exchange/widgets/user_photo/user_photo.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      viewModelBuilder: () => RegisterViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Register").white(),
          ),
          body: ListView(
            children: [
              GestureDetector(
                onTap: model.selectPhoto,
                child: SizedBox(
                  height: 200,
                  child: Center(
                    child: AnimatedCrossFade(
                      duration: const Duration(milliseconds: 100),
                      firstChild: const Avatar(),
                      secondChild: UserPhoto(image: model.selectedPhoto),
                      crossFadeState: model.showSelectPhotoPrompt
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                child: Column(
                  children: [
                    const SITextField(
                      "Full Name",
                      placeholder: "Joan Shay",
                    ),
                    const SITextField(
                      "Email",
                      placeholder: "joan.shay@sparrow.com",
                    ),
                    const SITextField(
                      "Phone Number",
                      placeholder: "+233 (244) 245 190",
                    ),
                    const SITextField(
                      "Role",
                      placeholder: "Director of Marketing",
                    ),
                    const SITextField(
                      "Twitter",
                      placeholder: "@joansays",
                    ),
                    const SITextField(
                      "LinkedIn",
                      placeholder: "/joan.shay",
                    ),
                    PinkButton(
                      "REGISTER",
                      isBusy: model.isBusy,
                      onTap: model.register,
                    ),
                  ].separator(const Divider()),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
