import 'package:adiza_exchange/extensions/widget_list.dart';
import 'package:adiza_exchange/res/app_assets.dart';
import 'package:adiza_exchange/views/walk_through/walk_through_viewmodel.dart';
import 'package:adiza_exchange/widgets/div/div.dart';
import 'package:adiza_exchange/widgets/h2/h2.dart';
import 'package:adiza_exchange/widgets/nav_button/nav_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WalkThroughView extends StatelessWidget {
  const WalkThroughView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalkThroughViewModel>.reactive(
      viewModelBuilder: () => WalkThroughViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        return Scaffold(
          body: Column(
            children: [
              //
              Image.asset(AppAssets.walkthrough),

              Padding(
                padding: const EdgeInsets.all(32).copyWith(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2("EASY WAY TO KEEP IN TOUCH"),
                    Div("Sign in or register with your email"),
                  ].spacing(8),
                ),
              ),

              const Spacer(),
            ],
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavButton(
                  "REGISTER",
                  onTap: model.navigateToRegisterView,
                ),
                NavButton(
                  "SIGN IN",
                  onTap: model.navigateToLoginView,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
