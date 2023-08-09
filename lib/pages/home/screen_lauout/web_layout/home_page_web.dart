import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:general_register/common/routes/names.dart';
import 'package:general_register/common/widgets/menu_bar/menu_bar.dart';
import 'package:general_register/features/school_information/display/pages/school_page.dart';
import 'package:general_register/pages/admission/admission_page.dart';
import 'package:general_register/pages/domicile/domicile_page.dart';
import 'package:general_register/pages/home/screen_lauout/common/common.dart';
import 'package:general_register/pages/home/screen_lauout/model/home_page_menu_list_item_model.dart';
import 'package:general_register/pages/home/screen_lauout/widgets/home_page_widget.dart';
import 'package:general_register/pages/leaving_certificate/leaving_certificate_page.dart';
import 'package:go_router/go_router.dart';

class HomepageWeb extends StatefulWidget {
  const HomepageWeb({super.key});

  @override
  State<HomepageWeb> createState() => _HomepageWebState();
}

// class _HomepageWebState extends State<HomepageWeb> {
//   int currentPageIndex = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               child: ListView(
//                 children: [
//                   ...getMenuListItem().map(
//                     (e) => buildMenuListItem(
//                       e,
//                       (index) {
//                         setState(() {
//                           currentPageIndex = index;
//                         });
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: 1,
//             color: Colors.grey.withOpacity(0.2),
//           ),
//           Flexible(
//             flex: 5,
//             child: Container(
//               child: Builder(
//                 builder: (context) {
//                   if (currentPageIndex == 1) {
//                     return const SchoolPage();
//                   } else if (currentPageIndex == 2) {
//                     return const AdmissionPage();
//                   } else if (currentPageIndex == 3) {
//                     return const LeavingCertificatePage();
//                   } else {
//                     return const DomicilePage();
//                   }
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _HomepageWebState extends State<HomepageWeb> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const BuildMenuBar(),
          Flexible(
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text("Welcome to the General Register "),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
