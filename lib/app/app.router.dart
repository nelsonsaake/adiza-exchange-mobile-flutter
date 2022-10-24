// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/get_started/get_started_view.dart';
import '../views/home_qr/home_qr_view.dart';
import '../views/login/login_view.dart';
import '../views/member_profile/member_profile_view.dart';
import '../views/member_profile_loading/member_profile_loading_view.dart';
import '../views/register/register_view.dart';
import '../views/scan_member_qr/scan_member_qr_view.dart';
import '../views/splash/splash_view.dart';
import '../views/walk_through/walk_through_view.dart';

class Routes {
  static const String splashView = '/';
  static const String getStartedView = '/get-started-view';
  static const String walkThroughView = '/walk-through-view';
  static const String loginView = '/login-view';
  static const String registerView = '/register-view';
  static const String homeQRView = '/home-qr-view';
  static const String scanMemberQRView = '/scan-member-qr-view';
  static const String memberProfileLoadingView = '/member-profile-loading-view';
  static const String memberProfileView = '/member-profile-view';
  static const all = <String>{
    splashView,
    getStartedView,
    walkThroughView,
    loginView,
    registerView,
    homeQRView,
    scanMemberQRView,
    memberProfileLoadingView,
    memberProfileView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.getStartedView, page: GetStartedView),
    RouteDef(Routes.walkThroughView, page: WalkThroughView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.registerView, page: RegisterView),
    RouteDef(Routes.homeQRView, page: HomeQRView),
    RouteDef(Routes.scanMemberQRView, page: ScanMemberQRView),
    RouteDef(Routes.memberProfileLoadingView, page: MemberProfileLoadingView),
    RouteDef(Routes.memberProfileView, page: MemberProfileView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashView(),
        settings: data,
      );
    },
    GetStartedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const GetStartedView(),
        settings: data,
      );
    },
    WalkThroughView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const WalkThroughView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RegisterView(),
        settings: data,
      );
    },
    HomeQRView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeQRView(),
        settings: data,
      );
    },
    ScanMemberQRView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ScanMemberQRView(),
        settings: data,
      );
    },
    MemberProfileLoadingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MemberProfileLoadingView(),
        settings: data,
      );
    },
    MemberProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MemberProfileView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Extension for strongly typed navigation
/// *************************************************************************

extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToSplashView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.splashView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToGetStartedView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.getStartedView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToWalkThroughView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.walkThroughView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToLoginView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.loginView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToRegisterView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.registerView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToHomeQRView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.homeQRView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToScanMemberQRView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.scanMemberQRView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMemberProfileLoadingView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.memberProfileLoadingView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMemberProfileView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.memberProfileView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}
