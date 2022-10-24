import 'package:adiza_exchange/views/get_started/get_started_view.dart';
import 'package:adiza_exchange/views/home_qr/home_qr_view.dart';
import 'package:adiza_exchange/views/login/login_view.dart';
import 'package:adiza_exchange/views/member_profile/member_profile_view.dart';
import 'package:adiza_exchange/views/member_profile_loading/member_profile_loading_view.dart';
import 'package:adiza_exchange/views/register/register_view.dart';
import 'package:adiza_exchange/views/scan_member_qr/scan_member_qr_view.dart';
import 'package:adiza_exchange/views/splash/splash_view.dart';
import 'package:adiza_exchange/views/walk_through/walk_through_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: GetStartedView),
    MaterialRoute(page: WalkThroughView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: HomeQRView),
    MaterialRoute(page: ScanMemberQRView),
    MaterialRoute(page: MemberProfileLoadingView),
    MaterialRoute(page: MemberProfileView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class App {}
