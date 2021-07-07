import 'package:flutter/services.dart';
import 'package:zam_event_bus/zam_event_bus.dart';
import 'package:zam_event_bus_provider/zam_event_bus_provider.dart';

import '_library/hero_dialog.route.dart';
import 'dsm/theme.dart';
import 'pages/_widget.imports.dart';
import 'pages/bmi_details/bmi_details.page.dart';
import 'pages/home/home.page.dart';

class RootView extends StatelessWidget {
  static const title = 'BMI Calculator';

  final EventBus bus;
  final themeManager = const ZamBmiCalculatorThemeManager();

  const RootView(this.bus);

  @override
  Widget build(BuildContext context) {
    final overlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);

    return EventBusProvider(
      bus: bus,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: overlayStyle,
        child: MaterialApp(
          title: title,
          onGenerateRoute: onGenerateRoute,
          theme: themeManager.getDefaultLightTheme(),
          darkTheme: themeManager.getDefaultDarkTheme(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Pages.home:
        return MaterialPageRoute(builder: (context) => HomePage());
      case Pages.bmiDetails:
        return HeroDialogRoute(builder: (context) => BmiDetailsPage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
