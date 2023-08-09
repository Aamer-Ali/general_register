import 'package:flutter/material.dart';
import 'package:general_register/common/cookies/CookieManager.dart';
import 'package:general_register/common/routes/names.dart';
import 'package:general_register/common/values/constatns.dart';
import 'package:general_register/pages/home/screen_lauout/common/common.dart';
import 'package:general_register/pages/home/screen_lauout/widgets/home_page_widget.dart';
import 'package:go_router/go_router.dart';

class BuildMenuBar extends StatelessWidget {
  const BuildMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.grey.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                //TODO: GO to home page.
              },
              child: const Text(
                "General Register",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          Row(
            children: [
              ...getMenuListItem().map(
                (e) => buildMenuListItem(e, (index) {
                  if (index == 1) {
                    context.goNamed(AppRoutesName.HOME_PAGE);
                  } else if (index == 2) {
                    context.goNamed(AppRoutesName.SCHOOL_INFORMATION_PAGE);
                  } else if (index == 3) {
                    context.goNamed(AppRoutesName.ADMISSION_PAGE);
                  } else if (index == 4) {
                    context.goNamed(AppRoutesName.LEAVING_CERTIFICATE_PAGE);
                  } else if (index == 5) {
                    context.goNamed(AppRoutesName.DOMICILE_PAGE);
                  } else {
                    CookieManager.logOutUser(AppConstants.IS_USER_LOGIN_KEY, false);
                    context.pushNamed(AppRoutesName.SIGN_IN_PAGE);
                  }
                }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
