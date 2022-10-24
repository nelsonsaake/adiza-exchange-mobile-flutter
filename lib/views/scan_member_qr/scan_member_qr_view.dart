import 'package:adiza_exchange/extensions/text.dart';
import 'package:adiza_exchange/extensions/widget_list.dart';
import 'package:adiza_exchange/res/app_colors.dart';
import 'package:adiza_exchange/widgets/app_outline_button/app_outline_button.dart';
import 'package:adiza_exchange/widgets/div/div.dart';
import 'package:adiza_exchange/widgets/qr_code_scanner/qr_code_scanner.dart';
import 'package:adiza_exchange/widgets/sm_circular_progress_indicator/sm_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'scan_member_qr_viewmodel.dart';

class ScanMemberQRView extends StatelessWidget {
  const ScanMemberQRView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScanMemberQRViewModel>.reactive(
      viewModelBuilder: () => ScanMemberQRViewModel(),
      onModelReady: (model) => model.init(),
      builder: (_, model, __) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: GestureDetector(
            onTap: model.scan,
            child: Stack(
              children: [
                const QRCodeScanner(),
                if (model.isNotBusy)
                  Positioned.fill(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 180,
                            width: 189,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Div("Place QR Code Within Frame").white(),
                        ].spacing(16),
                      ),
                    ),
                  ),
                if (model.isBusy)
                  const Positioned.fill(
                    child: Center(
                      child: SMCircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
          bottomSheet: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Div("Want to share your contact?").dark(),
                AppOutlineButton(
                  "Send QR",
                  color: AppColors.brown,
                  onTap: model.navigateToHomeQRView,
                ),
              ].spacing(16),
            ),
          ),
        );
      },
    );
  }
}
