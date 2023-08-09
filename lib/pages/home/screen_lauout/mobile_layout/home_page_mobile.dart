import 'package:flutter/material.dart';
import 'package:general_register/common/routes/names.dart';
import 'package:general_register/common/widgets/app_bar/app_bar.dart';
import 'package:general_register/pages/home/screen_lauout/common/common.dart';
import 'package:general_register/pages/home/screen_lauout/widgets/home_page_widget.dart';
import 'package:go_router/go_router.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: buildAppBar(title: "General Register"),
      drawer: NavigationDrawer(children: [
        ListTile(title: Text("School Information"),onTap: (){
          context.pop();
          context.pushNamed(AppRoutesName.SCHOOL_PAGE);
        },),
        ListTile(title: Text("Student"),onTap: (){}),
        ListTile(title: Text("Leaving Certificate"),onTap: (){}),
        ListTile(title: Text("Bonafide"),onTap: (){}),
        ListTile(title: Text("Logout"),onTap: (){}),
      ]),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 5,
          children: [
            ...getMenuListItem().map(
              (e) => buildMenuGridItem(
                e,
                (index) {
                  switch (index) {
                    case 1:
                      context.pushNamed(AppRoutesName.SCHOOL_INFORMATION_PAGE);
                    case 2:
                      context.pushNamed(AppRoutesName.ADMISSION_PAGE);
                    case 3:
                      context.pushNamed(AppRoutesName.LEAVING_CERTIFICATE_PAGE);
                    case 4:
                      context.pushNamed(AppRoutesName.DOMICILE_PAGE);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
