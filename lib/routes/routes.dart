import 'package:flutter/material.dart';
import 'package:gas/view/bottom_nav/bottom_navigation.dart';
import 'package:gas/view/auth/otp.dart';
import 'package:gas/view/auth/profile.dart';
import 'package:gas/view/auth/sign_in.dart';
import 'package:gas/view/auth/sign_up.dart';
import 'package:gas/view/home_screen/dettails_page.dart';
import 'package:gas/view/screens/intro.dart';
import 'package:gas/view/screens/splash.dart';
import 'package:get/get.dart';

class Routes {
  static const String splash = "/splash-screen";
  static const String intro = "/intro-screen";
  static const String signIn = "/sign_in-screen";
  static const String signUp = "/sign_up-screen";
  static const String otp = "/otp-screen";
  static const String profile = "/profile-screen";
  static const String bottomNav = "/bottom-nav-screen";
  static const String dettails = "/dettails-screen";
}

List<GetPage> pages = [
  GetPage(name: Routes.splash, page: () => SplashScreen()),
  GetPage(name: Routes.intro, page: () => Intro()),
  GetPage(name: Routes.signIn, page: () => SignIn()),
  GetPage(name: Routes.signUp, page: () => SignUp()),
  GetPage(name: Routes.otp, page: () => OtpScreen()),
  GetPage(name: Routes.profile, page: () => ProfileScreen()),
  GetPage(name: Routes.bottomNav, page: () => BottomNavigationScreen()),
    GetPage(name: Routes.dettails, page: () => DettailsPage()),

];
