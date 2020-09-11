// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../accounting_home/accounting_home_page.dart';
import '../init_setting/init_setting_page.dart';
import '../welcome/welcome_page.dart';

class Routes {
  static const String welcomePage = '/';
  static const String initSettingPage = '/init-setting-page';
  static const String accountingHomePage = '/accounting-home-page';
  static const all = <String>{
    welcomePage,
    initSettingPage,
    accountingHomePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.welcomePage, page: WelcomePage),
    RouteDef(Routes.initSettingPage, page: InitSettingPage),
    RouteDef(Routes.accountingHomePage, page: AccountingHomePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    WelcomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomePage(),
        settings: data,
      );
    },
    InitSettingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InitSettingPage(),
        settings: data,
      );
    },
    AccountingHomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AccountingHomePage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushWelcomePage() => push<dynamic>(Routes.welcomePage);

  Future<dynamic> pushInitSettingPage() =>
      push<dynamic>(Routes.initSettingPage);

  Future<dynamic> pushAccountingHomePage() =>
      push<dynamic>(Routes.accountingHomePage);
}
