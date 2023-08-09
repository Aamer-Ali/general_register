import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/cookies/CookieManager.dart';
import 'package:general_register/common/routes/names.dart';
import 'package:general_register/common/services/storage_service.dart';
import 'package:general_register/common/values/constatns.dart';
import 'package:general_register/features/authentication/display/pages/sign_in.dart';
import 'package:general_register/features/school_information/display/pages/school_information_page.dart';
import 'package:general_register/features/school_information/display/pages/school_page.dart';
import 'package:general_register/features/school_information/display/state_management/bloc/school_information_bloc.dart';
import 'package:general_register/pages/admission/admission_page.dart';
import 'package:general_register/pages/domicile/domicile_page.dart';
import 'package:general_register/pages/home/home_page.dart';
import 'package:general_register/pages/leaving_certificate/leaving_certificate_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AppPages {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: AppRoutesName.SIGN_IN_PAGE,
        path: AppRoutesPath.SIGN_IN_PAGE,
        builder: (BuildContext context, GoRouterState state) => const SignIn(),
      ),
      GoRoute(
        name: AppRoutesName.HOME_PAGE,
        path: AppRoutesPath.HOME_PAGE,
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
      ),
      GoRoute(
        name: AppRoutesName.SCHOOL_PAGE,
        path: AppRoutesPath.SCHOOL_PAGE,
        builder: (BuildContext context, GoRouterState state) => const SchoolPage(),
      ),
      GoRoute(
        name: AppRoutesName.SCHOOL_INFORMATION_PAGE,
        path: AppRoutesPath.SCHOOL_INFORMATION_PAGE,
        builder: (BuildContext context, GoRouterState state) {
          context.read<SchoolInformationBloc>().add(OnSchoolInitialEvent());
          return const SchoolInformationPage();
        },
      ),
      GoRoute(
        name: AppRoutesName.ADMISSION_PAGE,
        path: AppRoutesPath.ADMISSION_PAGE,
        builder: (BuildContext context, GoRouterState state) => const AdmissionPage(),
      ),
      GoRoute(
        name: AppRoutesName.LEAVING_CERTIFICATE_PAGE,
        path: AppRoutesPath.LEAVING_CERTIFICATE_PAGE,
        builder: (BuildContext context, GoRouterState state) => const LeavingCertificatePage(),
      ),
      GoRoute(
        name: AppRoutesName.DOMICILE_PAGE,
        path: AppRoutesPath.DOMICILE_PAGE,
        builder: (BuildContext context, GoRouterState state) => const DomicilePage(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool isLoggedIn;
      if (kIsWeb) {
        isLoggedIn = CookieManager.getCookie(AppConstants.IS_USER_LOGIN_KEY);
      } else {
        isLoggedIn = context.read<StorageService>().getIsUserLoggedIn();
      }

      final bool isLoginPage = state.matchedLocation == AppRoutesPath.SIGN_IN_PAGE;

      if (!isLoggedIn) {
        return isLoginPage ? null : AppRoutesPath.SIGN_IN_PAGE;
      }
      if (isLoginPage) {
        return AppRoutesPath.HOME_PAGE;
      }
    },
  );
}
