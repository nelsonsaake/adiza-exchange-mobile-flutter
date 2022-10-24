import 'package:adiza_exchange/extensions/color.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/res/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(
        backgroundColor: AppColors.backgroundColor,
        primarySwatch: AppColors.pink.asMaterial,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.textColor,
              displayColor: AppColors.textColor,
            ),
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
