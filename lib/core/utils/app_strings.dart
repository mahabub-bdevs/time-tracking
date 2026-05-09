/// Centralized localization key constants.
/// Use these instead of bare string literals like `'welcome_back'.tr`
/// to prevent typos and make key usage traceable across the codebase.
class AppStrings {
  AppStrings._();

  // ─── App Info ─────────────────────────────────────────────────────────────
  static const String appName = 'app_name';
  static const String appTagline = 'app_tagline';

  // ─── Login Screens ────────────────────────────────────────────────────
  static const String welcomeToPrecise = "welcome_to_precise";
  static const String loginToYourAccount = "login_to_your_account";
  static const String email = "email";
  static const String password = "password";
  static const String login = "login";
  static const String forgetPassword = "forget_password";
}
