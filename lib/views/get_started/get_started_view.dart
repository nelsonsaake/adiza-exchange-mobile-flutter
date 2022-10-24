import 'package:adiza_exchange/views/get_started/get_started_viewmodel.dart';
import 'package:adiza_exchange/widgets/h1/h1.dart';
import 'package:adiza_exchange/widgets/logo/logo.dart';
import 'package:adiza_exchange/widgets/ul/ul.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GetStartedViewModel().navigateToWalkThroughView(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //
              const Logo(),

              H1("ADIZA\nEXCHANGE"),

              Column(
                children: const [
                  Text("GET"),
                  Ul("STARTED"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
