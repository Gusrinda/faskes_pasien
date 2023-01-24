import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/presentation/views/auth/login_view.dart';

import 'core/assets/assets.gen.dart';
import 'core/config/app_route.dart';
import 'core/config/theme_colors.dart';
import 'presentation/blocs/administrative/administrative_bloc.dart';
import 'presentation/blocs/auth/authentication/authentication_bloc.dart';
import 'presentation/views/home/dashboard_view.dart';
import 'presentation/views/settings/settings_controller.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(AssetImage(Assets.logo.fastkes.path), context);
  }

  NavigatorState get _navigator => navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        final themeData = ThemeData(primarySwatch: ThemeColors.green);
        final textTheme = GoogleFonts.poppinsTextTheme(themeData.textTheme);
        final poppins = GoogleFonts.poppins();
        final theme = themeData.copyWith(
          textTheme: textTheme,
          scaffoldBackgroundColor: Colors.white,
          disabledColor: ThemeColors.grey5,
          appBarTheme: themeData.appBarTheme.copyWith(
            centerTitle: true,
            elevation: 0.0,
            color: Colors.white,
            actionsIconTheme: themeData.primaryIconTheme.copyWith(
              color: ThemeColors.greyPrimary,
            ),
            iconTheme: themeData.primaryIconTheme.copyWith(
              color: ThemeColors.greyPrimary,
            ),
            titleTextStyle: textTheme.headline5?.copyWith(
              color: ThemeColors.greyPrimary,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return Theme.of(context).disabledColor;
                }
                return Colors.white;
              }),
              visualDensity: const VisualDensity(vertical: 2),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                fontFamily: poppins.fontFamily,
              )),
              elevation: MaterialStateProperty.all(0),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              visualDensity: const VisualDensity(vertical: 2),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                fontFamily: poppins.fontFamily,
              )),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: themeData.primaryColor,
                  width: 2,
                ),
              ),
            ),
          ),
        );

        final settingsController = context.read<SettingsController>();

        final app = MaterialApp(
          restorationScopeId: 'blitar-sehat-app',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          navigatorKey: navigatorKey,
          theme: theme,
          themeMode: settingsController.themeMode,
          onGenerateRoute: AppRoute.onGenerateRoute,
          builder: _builder,
        );

        return AnimatedBuilder(
          animation: settingsController,
          builder: (BuildContext context, Widget? child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) {
                    final bloc =
                        AuthenticationBloc(userRepository: context.read());
                    // delayed to show splash + waiting widget to build
                    Future.delayed(const Duration(milliseconds: 750), () {
                      _listeningToAuthenticationStatus(bloc, bloc.state.status);
                    });
                    return bloc;
                  },
                ),
                BlocProvider(
                  create: (context) {
                    final loginUser =
                        context.read<AuthenticationBloc>().state.loginUser!;
                    final bearerToken = loginUser.bearerToken;

                    return AdministrativeBloc(
                      bearerToken: bearerToken,
                      repository: context.read(),
                    );
                  },
                ),
              ],
              child: app,
            );
          },
        );
      },
    );
  }

  Widget _builder(BuildContext context, Widget? child) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        debugPrint('APP : ${state.toString()}');
        _listeningToAuthenticationStatus(context, state.status);
      },
      child: child,
    );
  }

  _listeningToAuthenticationStatus(
      dynamic context, AuthenticationStatus status) {
    AuthenticationBloc? bloc;
    if (context is BuildContext) {
      bloc = context.read<AuthenticationBloc>();
    } else if (context is AuthenticationBloc) {
      bloc = context;
    }

    switch (status) {
      case AuthenticationStatus.unknown:
      case AuthenticationStatus.unauthenticated:
        _navigator.pushNamedAndRemoveUntil(
          LoginView.routeName,
          (route) => false,
        );
        break;
      case AuthenticationStatus.authenticated:
        bloc?.add(const AuthenticationStatusChanged(AuthenticationStatus.me));
        _navigator.pushNamedAndRemoveUntil(
          DashboardView.routeName,
          (route) => false,
        );
        break;
      case AuthenticationStatus.me:
        break;
    }
  }
}
