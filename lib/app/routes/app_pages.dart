import 'package:get/get.dart';

import 'package:mammoth/app/modules/CreateNewPassword/bindings/create_new_password_binding.dart';
import 'package:mammoth/app/modules/CreateNewPassword/views/create_new_password_view.dart';
import 'package:mammoth/app/modules/application_sent_screen/bindings/application_sent_screen_binding.dart';
import 'package:mammoth/app/modules/application_sent_screen/views/application_sent_screen_view.dart';
import 'package:mammoth/app/modules/application_status_screen/bindings/application_status_screen_binding.dart';
import 'package:mammoth/app/modules/application_status_screen/views/application_status_screen_view.dart';
import 'package:mammoth/app/modules/appliction_form_screen/bindings/appliction_form_screen_binding.dart';
import 'package:mammoth/app/modules/appliction_form_screen/views/appliction_form_screen_view.dart';
import 'package:mammoth/app/modules/create_account/bindings/create_account_binding.dart';
import 'package:mammoth/app/modules/create_account/views/create_account_view.dart';
import 'package:mammoth/app/modules/details_screen/bindings/details_screen_binding.dart';
import 'package:mammoth/app/modules/details_screen/views/details_screen_view.dart';
import 'package:mammoth/app/modules/faq_screen/bindings/faq_screen_binding.dart';
import 'package:mammoth/app/modules/faq_screen/views/faq_screen_view.dart';
import 'package:mammoth/app/modules/forgotpassword/bindings/forgotpassword_binding.dart';
import 'package:mammoth/app/modules/forgotpassword/views/forgotpassword_view.dart';
import 'package:mammoth/app/modules/job_tab_screen/bindings/job_tab_screen_binding.dart';
import 'package:mammoth/app/modules/job_tab_screen/views/job_tab_screen_view.dart';
import 'package:mammoth/app/modules/loginscreen/bindings/Login_binding.dart';
import 'package:mammoth/app/modules/loginscreen/views/login_view.dart';
import 'package:mammoth/app/modules/newslatter_screen/bindings/newslatter_screen_binding.dart';
import 'package:mammoth/app/modules/newslatter_screen/views/newslatter_screen_view.dart';
import 'package:mammoth/app/modules/notification_screen/bindings/notification_screen_binding.dart';
import 'package:mammoth/app/modules/notification_screen/views/notification_screen_view.dart';
import 'package:mammoth/app/modules/privacy_policy_screen/bindings/privacy_policy_screen_binding.dart';
import 'package:mammoth/app/modules/privacy_policy_screen/views/privacy_policy_screen_view.dart';
import 'package:mammoth/app/modules/profile_screen/bindings/profile_screen_binding.dart';
import 'package:mammoth/app/modules/profile_screen/views/profile_screen_view.dart';
import 'package:mammoth/app/modules/search_screen/bindings/search_screen_binding.dart';
import 'package:mammoth/app/modules/search_screen/views/search_screen_view.dart';
import 'package:mammoth/app/web_page/subscription_web_screen/bindings/subscription_web_screen_binding.dart';
import 'package:mammoth/app/web_page/subscription_web_screen/views/subscription_web_screen_view.dart';
import 'package:mammoth/app/modules/term_condition_screen/bindings/term_condition_screen_binding.dart';
import 'package:mammoth/app/modules/term_condition_screen/views/term_condition_screen_view.dart';
import 'package:mammoth/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:mammoth/app/modules/welcome/views/welcome_view.dart';
import 'package:mammoth/app/web_page/blog_web_screen/bindings/blog_web_screen_binding.dart';
import 'package:mammoth/app/web_page/dashboard_web_screen/views/dashboard_web_screen_view.dart';
import 'package:mammoth/app/web_page/job_web_screen/bindings/job_web_screen_binding.dart';
import 'package:mammoth/app/web_page/job_web_screen/views/job_web_screen_view.dart';
import 'package:mammoth/app/web_page/main_dashboard_web_page/bindings/main_dashboard_web_page_binding.dart';
import 'package:mammoth/app/web_page/main_dashboard_web_page/views/main_dashboard_web_page_view.dart';
import 'package:mammoth/app/web_page/post_job_category_page/views/post_job_category_page_view.dart';
import 'package:mammoth/app/web_page/post_job_web_scren/bindings/post_job_web_scren_binding.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splashscreen/bindings/splash_binding.dart';
import '../modules/splashscreen/views/splash_view.dart';
import '../web_page/blog_web_screen/views/blog_web_screen_view.dart';
import '../web_page/dashboard_web_screen/bindings/dashboard_web_screen_binding.dart';
import '../web_page/post_job_category_page/bindings/post_job_category_page_binding.dart';
import '../web_page/post_job_web_scren/views/post_job_web_scren_view.dart';

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
    GetPage(
      name: _Paths.SEARCH_SCREEN,
      page: () => SearchScreenView(),
      binding: SearchScreenBinding(),
    ),
    GetPage(
      name: _Paths.JOB_TAB_SCREEN,
      page: () => JobTabScreenView(),
      binding: JobTabScreenBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS_SCREEN,
      page: () => DetailsScreenView(),
      binding: DetailsScreenBinding(),
    ),
    GetPage(
      name: _Paths.APPLICTION_FORM_SCREEN,
      page: () => ApplicationFormScreenView(),
      binding: ApplicationFormScreenBinding(),
    ),
    GetPage(
      name: _Paths.APPLICATION_SENT_SCREEN,
      page: () => ApplicationSentScreenView(),
      binding: ApplicationSentScreenBinding(),
    ),
    GetPage(
      name: _Paths.APPLICATION_STATUS_SCREEN,
      page: () => ApplicationStatusScreenView(),
      binding: ApplicationStatusScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY_SCREEN,
      page: () => PrivacyPolicyScreenView(),
      binding: PrivacyPolicyScreenBinding(),
    ),
    GetPage(
      name: _Paths.TERM_CONDITION_SCREEN,
      page: () => TermConditionScreenView(),
      binding: TermConditionScreenBinding(),
    ),
    GetPage(
      name: _Paths.FAQ_SCREEN,
      page: () => FaqScreenView(),
      binding: FaqScreenBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_SCREEN,
      page: () => NotificationScreenView(),
      binding: NotificationScreenBinding(),
    ),
    GetPage(
      name: _Paths.NEWSLATTER_SCREEN,
      page: () => NewslatterScreenView(),
      binding: NewslatterScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD_WEB_SCREEN,
      page: () => DashboardWebScreenView(),
      binding: DashboardWebScreenBinding(),
    ),
    GetPage(
      name: _Paths.JOB_WEB_SCREEN,
      page: () => JobWebScreenView(),
      binding: JobWebScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_DASHBOARD_WEB_PAGE,
      page: () => MainDashboardWebPageView(),
      binding: MainDashboardWebPageBinding(),
    ),
    GetPage(
      name: _Paths.POST_JOB_CATEGORY_PAGE,
      page: () => PostJobCategoryPageView(),
      binding: PostJobCategoryPageBinding(),
    ),
    GetPage(
      name: _Paths.POST_JOB_WEB_SCREN,
      page: () => PostJobWebScreenView(),
      binding: PostJobWebScrenBinding(),
    ),
    GetPage(
      name: _Paths.BLOG_WEB_SCREEN,
      page: () => BlogWebScreenView(),
      binding: BlogWebScreenBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTION_WEB_SCREEN,
      page: () => SubscriptionWebScreenView(),
      binding: SubscriptionWebScreenBinding(),
    ),
  ];
}
