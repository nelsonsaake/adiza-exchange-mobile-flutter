import 'dart:io';

import 'package:adiza_exchange/viewmodels/context_viewmodel.dart';
import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanMemberQRViewModel extends ContextViewModel {
  // scan

  Future scan() async {
    return runBusyFuture(
      Future.delayed(const Duration(seconds: 2)),
    ).then(
      (value) => navigateToMemberProfileLoadingView(),
    );
  }

}
