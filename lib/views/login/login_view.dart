import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/res/app_assets.dart';
import 'package:adiza_exchange/views/login/login_viewmodel.dart';
import 'package:adiza_exchange/widgets/cerr/cerr.dart';
import 'package:adiza_exchange/widgets/pink_button/pink_button.dart';
import 'package:adiza_exchange/widgets/si_text_field/si_text_field.dart';
import 'package:adiza_exchange/widgets/nav_button/nav_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        debugPrint(model.isBusy.toString());
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Sign In").white(),
          ),
          body: ListView(
            children: [
              Image.asset(AppAssets.singInPhoto),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    //

                    // Ex: "Email or Password is incorrect, check and try again."
                    if (model.hasError) Cerr(model.errorMessage).left(),

                    const SITextField(
                      "Email",
                      placeholder: "john.smith@mail.com",
                    ),

                    const Divider(),

                    const SITextField(
                      "Password",
                      obscureText: true,
                      placeholder: "...",
                    ),

                    PinkButton(
                      "SIGN IN",
                      isBusy: model.isBusy,
                      onTap: model.login,
                    ),

                    Row(
                      children: const [
                        Text("Forgot?"),
                        NavButton("Reset Password"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
