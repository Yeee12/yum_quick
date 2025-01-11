import 'package:flutter/cupertino.dart';
import 'package:yum_quick/core/constants/home.dart';
import 'package:yum_quick/views/menu%20slide/contact%20us/contact_us.dart';
import 'package:yum_quick/views/menu%20slide/delivery%20adress/delivery_address.dart';
import 'package:yum_quick/views/menu%20slide/delivery%20adress/new_address.dart';
import 'package:yum_quick/views/menu%20slide/faq/faq.dart';
import 'package:yum_quick/views/menu%20slide/my%20profile/my_profile.dart';
import 'package:yum_quick/views/menu%20slide/orders/my_orders.dart';
import 'package:yum_quick/views/menu%20slide/payment/add_card.dart';
import 'package:yum_quick/views/menu%20slide/payment/payment_method.dart';
import 'package:yum_quick/views/menu%20slide/settings/notification_settings.dart';
import 'package:yum_quick/views/menu%20slide/settings/password_settings.dart';
import 'package:yum_quick/views/menu%20slide/settings/settings.dart';
import 'package:yum_quick/views/screens/food/food_screen.dart';
import 'package:yum_quick/views/screens/forget_password.dart';
import 'package:yum_quick/views/screens/home/home_screen.dart';
import 'package:yum_quick/views/screens/home/support.dart';
import 'package:yum_quick/views/screens/onboarding/onboarding1.dart';
import 'package:yum_quick/views/screens/onboarding/onboarding2.dart';
import 'package:yum_quick/views/screens/onboarding/onboarding3.dart';
import 'package:yum_quick/views/screens/register.dart';
import 'package:yum_quick/views/screens/second_splash.dart';
import 'package:yum_quick/views/screens/sign_in.dart';
import 'package:yum_quick/views/screens/splash.dart';

class AppRoutes {
  static const String splash = '/';
  static const String secondSplash = '/second-splash';
  static const String onBoarding1 = "/onboarding1";
  static const String onBoarding2 = "/onboarding2";
  static const String onBoarding3 = "/onboarding3";
  static const String login = "/login_page";
  static const String register = "/register";
  static const String home = "/home";      // Added Home Route
  static const String homeScreen = "/home_screen";
  static const String forgetPassword = "/forget_passwrod";
  static const String myOrders = "/my_orders";
  static const String myProfile = "/my_profile";
  static const String deliveryAddress = "/delivery_address";
  static const String newAddress = "/new_address";
  static const String paymentMethod = "/payment_method";
  static const String addCard = "/add_card";
  static const String contactUs = "/contact_us";
  static const String faq = "/faq";
  static const String settings = "/settings";
  static const String notificationSettings = "/notification_Settings";
  static const String passwordSettings = "/password_Settings";
  static const String support = "/support";
  static const String food_screen =  "/food_Screen";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => const Splash(),
      secondSplash: (context) => const SecondSplash(),
      onBoarding1: (context) => const Onboarding1(),
      onBoarding2: (context) => const Onboarding2(),
      onBoarding3: (context) => const Onboarding3(),
      login: (context) => const LoginPage(),
      register: (context) => const Register(),
      home: (context) => const Home(),    // Linked to Home Widget
      homeScreen: (context) => const HomeScreen(),
      forgetPassword: (context) => const ForgetPassword(),
      myOrders: (context) => const MyOrders(),
      myProfile: (context) => const MyProfile(),
      deliveryAddress: (context) => const DeliveryAddress(),
      newAddress: (context) => const NewAddress(),
      paymentMethod: (context) => const PaymentMethod(),
      addCard: (context) => const AddCard(),
      contactUs: (context) => const ContactUs(),
      faq: (context) => const Faq(),
      settings: (context) => const Settings(),
      notificationSettings: (context) => const NotificationSettings(),
      passwordSettings: (context) => const PasswordSettings(),
      support: (context) => const Support(),
      food_screen: (context) => const FoodScreen(),
    };
  }
}
