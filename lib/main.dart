import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/routes/routes.dart';
import 'package:general_register/common/services/storage_service.dart';
import 'package:general_register/common/values/color_schemes.dart';
import 'package:general_register/features/authentication/data/datasources/remote_data_source/sign_in_remote_data_source.dart';
import 'package:general_register/features/authentication/data/repositories/sign_in_repository_impl.dart';
import 'package:general_register/features/authentication/display/state_management/bloc/sign_in_bloc.dart';
import 'package:general_register/features/authentication/domain/usecases/user_sign_in.dart';
import 'package:general_register/features/school_information/display/state_management/bloc/school_information_bloc.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_strategy/url_strategy.dart';

late SharedPreferences sharedPreferences;

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC5fRFlD52JBP5gUZ8UuGVUVL3YJOsH0P8",
          appId: "1:646835384946:web:43e8ab619eb4139ca288eb",
          messagingSenderId: "646835384946",
          projectId: "generalregisterapp"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => StorageService(sharedPreferences: sharedPreferences)),
        RepositoryProvider(create: (context) => (SignInRemoteDataSourceImpl(sharedPreferences: sharedPreferences))),
        RepositoryProvider(create: (context) => SignInRepositoryImpl(context.read<SignInRemoteDataSourceImpl>())),
        RepositoryProvider(create: (context) => UserSignIn(context.read<SignInRepositoryImpl>())),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SignInBloc>(
            create: (context) => SignInBloc(context.read<UserSignIn>()),
          ),
          BlocProvider<SchoolInformationBloc>(
            create: (context) => SchoolInformationBloc()..add(OnSchoolInitialEvent()),
          ),
        ],
        child: ResponsiveBreakpoints.builder(
          breakpoints: [
            const Breakpoint(start: 0, end: 460, name: MOBILE),
            const Breakpoint(start: 461, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
          child: MaterialApp.router(
            routerDelegate: AppPages.router.routerDelegate,
            routeInformationParser: AppPages.router.routeInformationParser,
            routeInformationProvider: AppPages.router.routeInformationProvider,
            debugShowCheckedModeBanner: false,
            title: 'General Register',
            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
            // darkTheme:
            //     ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          ),
        ),
      ),
    );
  }
}
