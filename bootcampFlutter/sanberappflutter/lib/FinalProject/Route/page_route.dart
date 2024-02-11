import 'package:get/get.dart';
import 'package:sanberappflutter/FinalProject/Route/route_name.dart';
import 'package:sanberappflutter/FinalProject/Home/detail.dart';
import 'package:sanberappflutter/FinalProject/Home/home.dart';
import 'package:sanberappflutter/FinalProject/Home/aboutme.dart';
import 'package:sanberappflutter/FinalProject/Login/splash.dart';
import 'package:sanberappflutter/FinalProject/Login/getstarted.dart';
import 'package:sanberappflutter/FinalProject/Login/login.dart';
import 'package:sanberappflutter/FinalProject/Login/regis.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.splash , 
      page: () => const SplashScreen()
    ),
    GetPage(
      name: RouteName.getstarted , 
      page: () => const GetStarted()
    ),
    GetPage(
      name: RouteName.login , 
      page: () =>  LoginScreen()
    ),
    GetPage(
      name: RouteName.regis , 
      page: () =>  RegisScreen()
    ),
    GetPage(
      name: RouteName.home , 
      page: () =>  HomeScreen()
    ),
    GetPage(
      name: RouteName.detail , 
      page: () =>  DetailScreen()
    ),
    GetPage(
      name: RouteName.aboutme , 
      page: () => const Aboutme()
    ),
  ];
}