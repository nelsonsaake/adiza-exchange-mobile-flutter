import 'package:adiza_exchange/viewmodels/context_viewmodel.dart';

class LoginViewModel extends ContextViewModel {
  Future login() async {
    return runBusyFuture(
      Future.delayed(const Duration(seconds: 1)),
    ).then(
      (value) => navigateToHomeQRView(),
    );
  }
}
