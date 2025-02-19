import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_project/feature/home/view/home_screen.dart';
import 'package:task_project/feature/splash/view/splsh_screen.dart';


class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String home = '/home';

  static const String onboarding = '/onboarding';
  static const String step = '/step';

  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgot = '/forgot';
  static const String otpCode = '/otpCode';
  static const String newPassword = '/newPassword';
  static const String passwordSetAll = '/passwordSetAll';

  static const String profileScreen = '/profileScreen';




  static getInitialRoute() => initial;

  static getHomeRoute() => home;
  static onboardingRoute() => onboarding;


  static loginRoute() => login;
  static getSignupRoute() => signup;

  static forgotRoute() => forgot;
  static otpCodeRoute() => otpCode;
  static newPasswordRoute() => newPassword;
  static passwordSetAllRoute() => passwordSetAll;
  static profileScreenRoute() => profileScreen;




  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: home, page: ()=> HomeScreenView()),



  ];
}