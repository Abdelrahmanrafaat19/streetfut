import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/storage.dart';
import 'package:fut/feature/layout/translation/localization_cubit.dart';
import 'package:fut/feature/layout/translation/localization_state.dart';
import 'package:fut/feature/splash_screen/splash_screen.dart';
import 'package:fut/feature/teams/presentation/views/team_profile_screen.dart';
import 'package:fut/generated/l10n.dart';

import 'feature/player_profile/presentation/view/profile_player_screen.dart';
import 'feature/referee_mode.dart/presentation/views/refree_profile.dart';
import 'feature/referee_mode.dart/presentation/views/refree_start_match.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  await LocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(420, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => LocaleCubit()..getSavedLanguage(),
            ),
          ],
          child: BlocBuilder<LocaleCubit, ChangeLocaleState>(
            builder: (context, state) {
              return MaterialApp(
                locale: state.locale,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    scaffoldBackgroundColor: const Color(0xff131313),
                    drawerTheme:
                        const DrawerThemeData(backgroundColor: Colors.black),
                    appBarTheme:
                        const AppBarTheme(backgroundColor: Colors.transparent)),
                home: child,
              );
            },
          ),
        );
      },
      child: const SplashScreen(),
    );
  }
}
