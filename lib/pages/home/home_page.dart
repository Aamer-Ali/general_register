import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:general_register/pages/home/screen_lauout/layouts.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      if (ResponsiveBreakpoints.of(context).isDesktop) {
        return const HomepageWeb();
      }
    }
    return const HomePageMobile();
  }
}
