import 'package:accounting_app/presentation/accounting_home/accounting_home_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

import '../init_setting/init_setting_page.dart';
import '../welcome/welcome_page.dart';


@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: WelcomePage, initial: true),
    MaterialRoute(page: InitSettingPage),
    MaterialRoute(page: AccountingHomePage),
    // MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
 
class $Router{}