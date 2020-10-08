import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vpn_ui_flutter/app/locator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_ui_flutter/app/router.gr.dart';

main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VPN_UI_Flutter',
      theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      initialRoute: Routes.loginViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
