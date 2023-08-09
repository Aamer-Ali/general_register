import 'package:flutter/material.dart';
import 'package:general_register/common/widgets/menu_bar/menu_bar.dart';
import 'package:general_register/common/widgets/spacer/spacer.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BuildMenuBar(),
          Text("The Search Bar and fileters will be here"),
          Text("The Search Bar and fileters will be here"),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              shrinkWrap: true,
              childAspectRatio: 5 / 2,
              crossAxisCount: ResponsiveBreakpoints.of(context).isMobile
                  ? 1
                  : ResponsiveBreakpoints.of(context).isTablet
                      ? 3
                      : 4,
              children: List.generate(100, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/ic_launcher.png", width: 70, height: 70),
                        ),
                        buildHorizontalSpacer(),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'GR Number',
                            ),
                            Text('Studnet Name',),
                            Text('Fathers Name',),
                            Text('Class',),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
