import 'package:adiza_exchange/widgets/logo/logo.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        return GestureDetector(
          onTap: model.navigateToGetStartedView,
          child: const Scaffold(
            body: Center(
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Logo(),
              ),
            ),
          ),
        );
      },
    );
  }
}
