import 'package:adiza_exchange/app/app.locator.dart';
import 'package:adiza_exchange/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

mixin NavigatorViewModelMixin on BaseViewModel {
  NavigationService get navigationService => locator<NavigationService>();

  Future? navigateToSplashView() {
    return navigationService.navigateTo(Routes.splashView);
  }

  Future? navigateToGetStartedView() {
    return navigationService.navigateTo(Routes.getStartedView);
  }

  Future? navigateToWalkThroughView() {
    return navigationService.navigateTo(Routes.walkThroughView);
  }

  Future? navigateToLoginView() {
    return navigationService.navigateTo(Routes.loginView);
  }

  Future? navigateToRegisterView() {
    return navigationService.navigateTo(Routes.registerView);
  }

  Future? navigateToHomeQRView(){
    return navigationService.navigateTo(Routes.homeQRView);
  }

  Future? navigateToScanMemberQRView(){
    return navigationService.navigateTo(Routes.scanMemberQRView);
  }

  Future? navigateToMemberProfileLoadingView(){
    return navigationService.navigateTo(Routes.memberProfileLoadingView);
  }

  Future? navigateToMemberProfileView(){
    return navigationService.navigateTo(Routes.memberProfileView);
  }
}
