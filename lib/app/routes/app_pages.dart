import 'package:get/get.dart';

import 'package:mammoth/app/modules/CreateNewPassword/bindings/create_new_password_binding.dart';
import 'package:mammoth/app/modules/CreateNewPassword/views/create_new_password_view.dart';
import 'package:mammoth/app/modules/create_account/bindings/create_account_binding.dart';
import 'package:mammoth/app/modules/create_account/views/create_account_view.dart';
import 'package:mammoth/app/modules/forgotpassword/bindings/forgotpassword_binding.dart';
import 'package:mammoth/app/modules/forgotpassword/views/forgotpassword_view.dart';
import 'package:mammoth/app/modules/loginscreen/bindings/Login_binding.dart';
import 'package:mammoth/app/modules/loginscreen/views/login_view.dart';
import 'package:mammoth/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:mammoth/app/modules/welcome/views/welcome_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splashscreen/bindings/splash_binding.dart';
import '../modules/splashscreen/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ForgotPassword,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CreateAccount,
      page: () => const CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_PASSWORD,
      page: () => CreateNewPasswordView(),
      binding: CreateNewPasswordBinding(),
    ),
  ];
}
