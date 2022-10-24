import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/extensions/widget_list.dart';
import 'package:adiza_exchange/res/app_assets.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/views/home_qr/home_qr_viewmodel.dart';
import 'package:adiza_exchange/widgets/app_outline_button/app_outline_button.dart';
import 'package:adiza_exchange/widgets/div/div.dart';
import 'package:adiza_exchange/widgets/h2/h2.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:stacked/stacked.dart';

class HomeQRView extends StatelessWidget {
  const HomeQRView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeQRViewModel>.reactive(
      viewModelBuilder: () => HomeQRViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Home QR").white(),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 32,
            ).copyWith(bottom: 0),
            children: [
              //
              H2("Exchange Contact Information"),
              Div("Scan this QR below to share your contacts"),

              // Container(
              //   height: 180,
              //   width: 189,
              //   margin: const EdgeInsets.all(64),
              //   color: AppColors.qrPlaceholderColor,
              // ),

              Container(
                margin: const EdgeInsets.all(32),
                child: Center(
                  child: QrImage(
                    data: "1234567890",
                    version: QrVersions.auto,
                    size: 180.0,
                  ),
                ),
              ),

              Row(
                children: [
                  Image.asset(AppAssets.joan),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H2("Joan Shay"),
                      Div("Head of Marketing"),
                    ].spacing(8),
                  )
                ].spacing(16),
              ),

              const SizedBox(height: 150),
            ],
          ),
          bottomSheet: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Div("Want to add a new connection?").dark(),
                    AppOutlineButton(
                      "Scan QR",
                      color: AppColors.brown,
                      onTap: model.navigateToScanMemberQRView,
                    ),
                  ].spacing(16),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
